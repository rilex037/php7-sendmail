<?

die('it kinda works');

$headers = 'From: mail@uf-node.ml' . "\r\n" .
           'Reply-To: mail@uf-node.ml' . "\r\n" .
            'X-Mailer: PHP/' . phpversion();



$msg = "I'm not stupid";
$msg = wordwrap($msg,70);

// send email
mail("rilex2017@gmail.com","hey how is it going?",$msg,$headers);