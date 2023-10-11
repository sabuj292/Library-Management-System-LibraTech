
<?php
include "connection.php";
include "header.php";
?>

        <!-- page content area main -->
        <div class="right_col" role="main">
            <div class="">
                <div class="page-title">
                    <div class="title_left">
                        <h3></h3>
                    </div>

                    <div class="title_right">
                        <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="clearfix"></div>
                <div class="row" style="min-height:500px">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Display Books</h2>

                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                               
                                <?php
                                $res=mysqli_query($link,"select * from add_books");

                                echo "<table class='table table-bordered'>";

                                echo "<tr>";

                                    echo "<th>"; echo "Books name"; echo "</th>";
                                    echo "<th>"; echo "Books Image"; echo "</th>";
                                    echo "<th>"; echo "Books Category"; echo "</th>";
                                    echo "<th>"; echo "Author name"; echo "</th>";
                                    echo "<th>"; echo "Publication name"; echo "</th>";
                                    echo "<th>"; echo "Purchase date"; echo "</th>";
                                    echo "<th>"; echo "Books price"; echo "</th>";
                                    echo "<th>"; echo "Books Quantity"; echo "</th>";
                                    echo "<th>"; echo "Available"; echo "</th>";

                                echo "</tr>";
                               

                                while ($row=mysqli_fetch_array($res)) {

                                    echo "<tr>";

                                        echo "<td>"; echo $row["books_name"]; echo "</td>";
                                        echo "<td>"; ?> <img src="<?php echo $row["books_image"]; ?>" height="100" width="100"> <?php echo "</td>";
                                        echo "<td>"; echo $row["category"]; echo "</td>";
                                        echo "<td>"; echo $row["books_author_name"]; echo "</td>";
                                        echo "<td>"; echo $row["books_publication_name"]; echo "</td>";
                                        echo "<td>"; echo $row["books_purchase_date"]; echo "</td>";
                                        echo "<td>"; echo $row["books_price"]; echo "</td>";
                                        echo "<td>"; echo $row["books_qty"]; echo "</td>";
                                        echo "<td>"; echo $row["available_qty"]; echo "</td>";

                                echo "</tr>";

                                }

                                echo "</table>";

                                ?>



                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /page content -->

<?php
include "footer.php";
?>
 