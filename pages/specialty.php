		<tr>
			<th class="name">SPECIALTY PIZZA</th>
			<th>10"</th>
			<th>14"</th>
			<th>18"</th>
			<th>Qty</th>
			<th>Sub Total</th>
			<th>Add</th>
			<th>Remove</th>
		</tr>
<?php 
	while($res = mysqli_fetch_array($result_specialty)) 
	{ 		
		echo "
		<tr>
			<td class=\"name\">
				<h4>".$res['item_name']."</h4>
				<p>".$res['item_desc']."</p>
			</td>";

		echo "
			<td>
				<input type=\"radio\" name=\"size".$res['item_id']."\" value=\"".$res['item_price_10']."\" title=\"₱ ".$res['item_price_10'].".00\">
			</td>
			<td>
				<input type=\"radio\" name=\"size".$res['item_id']."\" value=\"".$res['item_price_14']."\" title=\"₱ ".$res['item_price_14'].".00\" >
			</td>
			<td>
				<input type=\"radio\" name=\"size".$res['item_id']."\" value=\"".$res['item_price_18']."\" title=\"₱ ".$res['item_price_18'].".00\" >
			</td>
			<td>
				<input type=\"text\" name=\"qty".$res['item_id']."\" value=\"".$_POST["qty".$res['item_id'].""]."\" placeholder=\"0\">
			</td>
			<td class=\"sub-total\">
				";
				$qty = $_POST['qty'.$res['item_id'].'']?:'0';
				$size = $_POST['size'.$res['item_id'].''];
				$st = $qty * $size; 
				echo "".$st.".00";
			echo "
			</td>
			<td>
				<input type=\"submit\" name=\"add".$res['item_id']."\" value=\"Add\">
			</td>
			<td>
				<input type=\"submit\" name=\"remove".$res['item_id']."\" value=\"Remove\">
			</td>
		</tr>

		";
	}
	if (isset($_POST['add'.$res['item_id'].''])) {
			$qty = $_POST['qty'.$res['item_id'].''];
			$size = $_POST['size'.$res['item_id'].''];
			$st = $qty * $size; 
			echo "pota pls".$st."";
			# code...
		}
?>