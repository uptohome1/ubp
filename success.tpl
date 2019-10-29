<?php 
	include $this->rgen('layout_top'); 
	echo $text_message;
	include $this->rgen('layout_bottom');
	echo $footer;
?>

<script>
window.dataLayer = window.dataLayer || [];
window.dataLayer.push({
 'Revenue' :  "<?php echo $needtotals ?>",
 'OrderId' : "<?php echo $needorderid ?>",
 'event' : 'purchase'
 });
</script>