package multiplexonline

import java.awt.image.BufferedImage
import javax.imageio.ImageIO
import java.lang.Float
import org.apache.commons.io.FileUtils
import grails.transaction.Transactional

@Transactional
class MOImageService {

    def burningImageService
	
	// TODO add proper exception handling.
	// TODO Movie the file directory to property files.
	
	void processImage(String imageUrl, String name, Float x1, Float y1, Float x2, Float y2) {
		String fileName = "/Users/sai/posters/temp/" + name + "." + imageUrl.subSequence((imageUrl.length() - 3), imageUrl.length())
		File file = new File(fileName)
		URL myURL = new URL(imageUrl);
		println("Copying image from URL")
		FileUtils.copyURLToFile(myURL, file);
		println("Copying image from URL - Done")
		BufferedImage image = ImageIO.read(file)
		float scalingRatio = image.width/800 //TODO this constant move to a property file.
		Float xn1 = new Float(x1.floatValue()*scalingRatio)
		Float yn1 = new Float(y1.floatValue()*scalingRatio)
		Float xn2 = new Float(x2.floatValue()*scalingRatio)
		Float yn2 = new Float(y2.floatValue()*scalingRatio)
		
		BufferedImage croppedImage = image.getSubimage(xn1.intValue(), yn1.intValue(), xn2.intValue() - xn1.intValue(), yn2.intValue() - yn1.intValue())
		String croppedFileName = "/Users/sai/posters/temp/cropped" + name + ".jpg"
		File croppedPicture = new File(croppedFileName)
		ImageIO.write(croppedImage, "jpg", croppedPicture);
		burningImageService.doWith(croppedFileName, '/Users/sai/posters')
		.execute (name, {
			it.scaleAccurate((280*16/9).intValue(), (280).intValue())
		 })
		.execute (name + '-thumbnail', {
			it.scaleAccurate(300, (300*9/16).intValue())
		 })
	}
}
