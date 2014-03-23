��    U      �              l     m  �   �     *  )   0     Z  �  [	  '   Q     y     �  #   �  b   �  *   &     Q     ]     e  D   z  $   �  >   �     #     0     >  2   N  :   �     �     �  :   �  1     z   G  _   �  .   "  �   Q  {   �  �   `  1   �         +  '   8  +   `     �  '   �     �  
   �     �       _     6   {     �     �  �   �  :   �        +   %  A   Q    �     �  7   �  C   �  �   4     �  �  �  j   q  �   �      	   �     �  -   �  3   �     �          %  m   4     �     �     �     �  N     �   Q!  X   �!  
   S"     ^"  '   p"     �"     �"    �"  ~  �#     N%  �   f%     &  )   &     ;&  �  <)  '   2+     Z+  
   x+  #   �+  b   �+  *   
,     5,     B,     K,  D   _,  $   �,  >   �,     -     -     #-  2   3-  :   f-     �-     �-  :   �-  1   �-  z   ..  _   �.  .   	/  �   8/  {   �/  �   G0  1   �0    �0     2  '    2  +   H2     t2  !   �2     �2  	   �2     �2     �2  _   �2  6   V3     �3     �3  �   �3  :   �4      �4  +   �4  A   $5    f5     u6  7   �6  C   �6  �   7     �7  �  �:  j   D<  �   �<    R=  	   Z>     d>  -   q>  3   �>     �>     �>     �>  m   ?     v?     �?     �?     �?  N  �?  �   )A  X   �A  ;  +B     gC  '   uC     �C     �C    �C    bytes, last modified:  <strong>Your documents
		are NOT stored in our database or in the Bitcoin blockchain</strong>, so you
	don't have to worry about your data being accessed by others. About After making payment to indicated address After the addresses are generated and the transaction is
		confirmed, the document is permanently certified and proven to exist
		since the transaction was confirmed. If the document hadn't existed at
		the time the transaction entered the blockchain, it would have been
		impossible to embed its digest in the two addresses and thus create
		the transaction (This is because of the hash function's property of
		being Second pre-image resistant). Embedding some hash and then
		adapting a future document to match the hash is also impossible (due
		to the Pre-image resistance of hash functions). This is why once the
		bitcoin blockchain confirms the transaction generated for the
		document, its existence is proven, with no trust in a central
		authority required. All we store is a <a
		href="https://en.wikipedia.org/wiki/Cryptographic_hash_function">cryptographic
		digest</a> of the file, associated to the time in which you uploaded the
	document. In this way, you can later certify that said data existed at
	that time. This is the first online service allowing you to publicly
	prove that you have certain information without revealing the data or
	yourself, with a decentralized certification based on the <a
		href="http://bitcoin.org/">Bitcoin network</a>. Calculate the document's SHA256 digest. Calculating the SHA256 digest Certify Checking for document
			integrity. Checking the status for a digest which was never submitted will give
"success": false, as follows: Click or drag and drop your document here. Common uses Contact Contact and feedback Content purported to be compressed with %s but failed to decompress. Decode the base58-encoded addresses. Demonstrating data
			ownership without revealing actual data. Developed by Developer API Document Digest Document proof embedded in the Bitcoin blockchain! Document proof not yet embedded in the bitcoin blockchain. Document timestamping. Error! File already exists in the system since %s. Redirecting... File successfully added to system. Redirecting... Find a transaction in the bitcoin blockchain that sends money
			to the document's addresses, obtained as described above. First we compute the SHA256 checksum hexdigest for a file we want to
certify on the blockchain: Having problems with our service? We can help: Here are ways in which you can calculate your document's SHA256
	digest. Of course you can also implement your own, these are here for
	reference. If anyone wants to manually confirm the document's existence at
		the timestamped time, they should just follow this steps: If we now check the document's digest status, we get it is "registered".
We want to get it from "registered" to "pending" after that. If you find this useful please consider donating: If you store a proof for your document and later
		re-upload it, the system will only recognize it if it is completely
		and fully the same document. The slightest change, and we'll recognize
		it is different, giving you the security that certified data can't be
		changed. Initializing It consists of the following two calls: Last documents confirmed in the blockchain: Last documents registered: Let's explain the API using an example: Loading document... Loading... Must select a file to upload Now hashing...  Payment being processed. Please wait while the bitcoin transaction is confirmed by the network. Please help us improve the site by providing feedback! Preparing to hash  Press, media, and mentions Receives a digest and returns <code>registered</code>, <code>pending</code>
		or <code>confirmed</code> if the document was registered, was paid for
		and pending blockchain insertion, or confirmed by the blockchain,
		respectively. Redirected but the response is missing a Location: header. Registered in our servers since: Registered in the bitcoin blockchain since: Select a document and have it certified in the Bitcoin blockchain So, first, we want to register the document's digest in
proofofexistence. This will return a bitcoin payment address, and the
minimum price (in satoshi, 0.00000001 BTC = 1 satoshi) to be paid to
that address in order to get the document proof inserted in the
blockchain. Technical foundations That's it! If you have any questions/feedback/problems, The challenge doesn't contain a server nonce, or this one is empty. The digest is embedded replacing the public key's hash in the
			two addresses, followed by trailing zeroes (the digest takes 32
			bytes, and each address can hold 20 bytes of data). The document is certified via embedding its <a
			href="https://en.wikipedia.org/wiki/SHA-2">SHA256</a> digest in the
		Bitcoin blockchain. This is done by generating a valid bitcoin
		transaction to two specially crafted addresses which encode/contain
		the hash. The hash is cut in two fragments, each fragment contained in
		one of these addresses. The hash fragment is used as a replacement for
		the RIPEMD-160 hash of the public ECDSA key in the <a
			href="https://en.bitcoin.it/wiki/Technical_background_of_Bitcoin_addresses">bitcoin
			address generation algorithm</a>. This is why the bitcoins sent in this
		special transaction are unspendable, as the addresses are being
		generated from the document's hash fragments instead of from a private
		ECDSA key. The key advantages are anonymity, privacy, and getting a decentralized
	proof which can't be removed by third parties or governments. <strong>Your
		document's existence is permanently validated by the blockchain even
		if this site is compromised or down</strong>, so you don't depend or need to
	trust any central authority. All previous timestamping solutions lack
	this independence. The transaction in the blockchain to those two addresses
			proves that the document existed at that time. This API allows developers to integrate their systems with
	proofofexistence's functionality. You can access all of the app's
	features through an HTTP interface. This indicates the address received payment and you now have to wait for
us to create the transaction that stores the proof permanently in the
blockchain. After payment was processed and the certifying transaction
created, the status should change to "confirmed": Timestamp Transaction Unsupported value for algorithm: %s.algorithm Unsupported value for pw-algorithm: %s.pw-algorithm Unsupported value for qop: %s. Upload Usage Example: Use our service to anonymously and securely store an online distributed
	proof of existence for any document. Using a client-side JS library We couldn't find that document What is proof of existence? What? You can prove certain data exists at a certain moment of time. As we
		use the <a href="https://blockchain.info/">Bitcoin blockchain</a> to
		store the document proof, you can certify the existence of your
		document without the need of a central authority. Use the computing
		power of the whole Bitcoin network to certify your data. You can publicly
		reveal the digest and if conflict arises you can prove you had the
		data that generates the digest. Useful for copyrighted material,
		patents, etc. Your document will
		NOT be uploaded. The cryptographic proof is calculated client-side. disclaimer drop me an email! for a minimum value of 500000
satoshis: n/a transaction timestamp used to register a new document's <a href="#sha256">SHA256 digest</a>.
		Returns a payment address where you need to send the bitcoins to have
		the document certified in the blockchain, and the ammount of bitcoins
		you need to send expressed in satoshis (100000000 satoshis = 1 BTC) Project-Id-Version: PROJECT VERSION
Report-Msgid-Bugs-To: EMAIL@ADDRESS
POT-Creation-Date: 2014-03-22 18:46-0500
PO-Revision-Date: 2014-03-22 18:46-0500
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: es <LL@li.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 1.3
  bytes, last modified:  <strong>Your documents
		are NOT stored in our database or in the Bitcoin blockchain</strong>, so you
	don't have to worry about your data being accessed by others. About After making payment to indicated address After the addresses are generated and the transaction is
		confirmed, the document is permanently certified and proven to exist
		since the transaction was confirmed. If the document hadn't existed at
		the time the transaction entered the blockchain, it would have been
		impossible to embed its digest in the two addresses and thus create
		the transaction (This is because of the hash function's property of
		being Second pre-image resistant). Embedding some hash and then
		adapting a future document to match the hash is also impossible (due
		to the Pre-image resistance of hash functions). This is why once the
		bitcoin blockchain confirms the transaction generated for the
		document, its existence is proven, with no trust in a central
		authority required. All we store is a <a
		href="https://en.wikipedia.org/wiki/Cryptographic_hash_function">cryptographic
		digest</a> of the file, associated to the time in which you uploaded the
	document. In this way, you can later certify that said data existed at
	that time. This is the first online service allowing you to publicly
	prove that you have certain information without revealing the data or
	yourself, with a decentralized certification based on the <a
		href="http://bitcoin.org/">Bitcoin network</a>. Calculate the document's SHA256 digest. Calculating the SHA256 digest Certificar Checking for document
			integrity. Checking the status for a digest which was never submitted will give
"success": false, as follows: Click or drag and drop your document here. Usos comunes Contacto Contacto y feedback Content purported to be compressed with %s but failed to decompress. Decode the base58-encoded addresses. Demonstrating data
			ownership without revealing actual data. Developed by Developer API Document Digest Document proof embedded in the Bitcoin blockchain! Document proof not yet embedded in the bitcoin blockchain. Timestamp de documentos. Error! File already exists in the system since %s. Redirecting... File successfully added to system. Redirecting... Find a transaction in the bitcoin blockchain that sends money
			to the document's addresses, obtained as described above. First we compute the SHA256 checksum hexdigest for a file we want to
certify on the blockchain: Having problems with our service? We can help: Here are ways in which you can calculate your document's SHA256
	digest. Of course you can also implement your own, these are here for
	reference. If anyone wants to manually confirm the document's existence at
		the timestamped time, they should just follow this steps: If we now check the document's digest status, we get it is "registered".
We want to get it from "registered" to "pending" after that. If you find this useful please consider donating: If you store a proof for your document and later
		re-upload it, the system will only recognize it if it is completely
		and fully the same document. The slightest change, and we'll recognize
		it is different, giving you the security that certified data can't be
		changed. Inicializando It consists of the following two calls: Last documents confirmed in the blockchain: Últimos documentos: Explicamos el API con un ejemplo: Loading document... Cargar... Must select a file to upload Now hashing...  Payment being processed. Please wait while the bitcoin transaction is confirmed by the network. Please help us improve the site by providing feedback! Preparing to hash  Medios y Mencionas Receives a digest and returns <code>registered</code>, <code>pending</code>
		or <code>confirmed</code> if the document was registered, was paid for
		and pending blockchain insertion, or confirmed by the blockchain,
		respectively. Redirected but the response is missing a Location: header. Registered in our servers since: Registered in the bitcoin blockchain since: Select a document and have it certified in the Bitcoin blockchain So, first, we want to register the document's digest in
proofofexistence. This will return a bitcoin payment address, and the
minimum price (in satoshi, 0.00000001 BTC = 1 satoshi) to be paid to
that address in order to get the document proof inserted in the
blockchain. Fundamentos técnicos That's it! If you have any questions/feedback/problems, The challenge doesn't contain a server nonce, or this one is empty. The digest is embedded replacing the public key's hash in the
			two addresses, followed by trailing zeroes (the digest takes 32
			bytes, and each address can hold 20 bytes of data). The document is certified via embedding its <a
			href="https://en.wikipedia.org/wiki/SHA-2">SHA256</a> digest in the
		Bitcoin blockchain. This is done by generating a valid bitcoin
		transaction to two specially crafted addresses which encode/contain
		the hash. The hash is cut in two fragments, each fragment contained in
		one of these addresses. The hash fragment is used as a replacement for
		the RIPEMD-160 hash of the public ECDSA key in the <a
			href="https://en.bitcoin.it/wiki/Technical_background_of_Bitcoin_addresses">bitcoin
			address generation algorithm</a>. This is why the bitcoins sent in this
		special transaction are unspendable, as the addresses are being
		generated from the document's hash fragments instead of from a private
		ECDSA key. The key advantages are anonymity, privacy, and getting a decentralized
	proof which can't be removed by third parties or governments. <strong>Your
		document's existence is permanently validated by the blockchain even
		if this site is compromised or down</strong>, so you don't depend or need to
	trust any central authority. All previous timestamping solutions lack
	this independence. The transaction in the blockchain to those two addresses
			proves that the document existed at that time. This API allows developers to integrate their systems with
	proofofexistence's functionality. You can access all of the app's
	features through an HTTP interface. This indicates the address received payment and you now have to wait for
us to create the transaction that stores the proof permanently in the
blockchain. After payment was processed and the certifying transaction
created, the status should change to "confirmed": Timestamp Transacción Unsupported value for algorithm: %s.algorithm Unsupported value for pw-algorithm: %s.pw-algorithm Unsupported value for qop: %s. Subir Ejemplo de Uso: Use our service to anonymously and securely store an online distributed
	proof of existence for any document. Using a client-side JS library We couldn't find that document ¿Qué es proof of existence? ¿Qué? You can prove certain data exists at a certain moment of time. As we
		use the <a href="https://blockchain.info/">Bitcoin blockchain</a> to
		store the document proof, you can certify the existence of your
		document without the need of a central authority. Use the computing
		power of the whole Bitcoin network to certify your data. You can publicly
		reveal the digest and if conflict arises you can prove you had the
		data that generates the digest. Useful for copyrighted material,
		patents, etc. Your document will
		NOT be uploaded. The cryptographic proof is calculated client-side. <strong>Important: </strong>Your browser does not support HTML5, so your document will need to be uploaded." + The cryptographic digest will be calculated on our servers but the document will be discarded immediately, without being stored, logged, or otherwise accessed. Please contact us if you have any questions. enviar email! for a minimum value of 500000
satoshis: n/a timestamp de la transacción used to register a new document's <a href="#sha256">SHA256 digest</a>.
		Returns a payment address where you need to send the bitcoins to have
		the document certified in the blockchain, and the ammount of bitcoins
		you need to send expressed in satoshis (100000000 satoshis = 1 BTC) 