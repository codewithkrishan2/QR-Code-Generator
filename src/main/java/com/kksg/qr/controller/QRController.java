package com.kksg.qr.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import com.kksg.qr.entity.User;

@Controller
public class QRController {

	@GetMapping
	public String indexPage() {
		return "index.jsp";
	}

	@GetMapping("/qr")
	public String getQrPage() {
		return "qr.jsp";
	}

	@PostMapping("/qr")
	public String postQrPage(User user) throws WriterException, IOException {

		System.out.println(user.getFirstName());
		System.out.println(user.getLastName());
		System.out.println(user.getEmail());
		System.out.println(user.getMobile());
		System.out.println(user.getCity());
		
		//Generating a random number between 1-100
		int random = (int) (Math.random() * 100) + 1;
		
		BufferedImage image = generateQrCode(user);

		File file = new File("E:\\Springboot\\REALTIME_PROJECT\\QR-Code-Generator\\src\\main\\resources\\static\\image\\"+user.getMobile()+random+".png");
		
		ImageIO.write(image, "png", file);
		
		System.out.println("QR Code Generated!!!");
		
		return "qr.jsp";
	}

	// QR Code GENERATOR

	public static BufferedImage generateQrCode(User user) throws WriterException {

		StringBuilder sb = new StringBuilder();

		sb.append("First Name: ").append(user.getFirstName()).append("\n")
				.append("Last Name: ").append(user.getLastName()).append("\n")
				.append("Email: ").append(user.getEmail()).append("\n")
				.append("City: ").append(user.getCity()).append("\n")
				.append("Mobile: ").append(user.getMobile());

		QRCodeWriter writer = new QRCodeWriter();
		BitMatrix matrix = writer.encode(sb.toString(), BarcodeFormat.QR_CODE, 300, 300);
		return MatrixToImageWriter.toBufferedImage(matrix);
	}
}
