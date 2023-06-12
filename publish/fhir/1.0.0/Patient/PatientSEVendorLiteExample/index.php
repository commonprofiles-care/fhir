<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://commonprofiles.care/fhir/1.0.0/Patient-PatientSEVendorLiteExample.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://commonprofiles.care/fhir/1.0.0/Patient-PatientSEVendorLiteExample.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://commonprofiles.care/fhir/1.0.0/Patient-PatientSEVendorLiteExample.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://commonprofiles.care/fhir/1.0.0/Patient-PatientSEVendorLiteExample.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://commonprofiles.care/fhir/1.0.0/Patient-PatientSEVendorLiteExample.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://commonprofiles.care/fhir/1.0.0/Patient-PatientSEVendorLiteExample.html');
else 
  Redirect('https://commonprofiles.care/fhir/1.0.0/Patient-PatientSEVendorLiteExample.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
