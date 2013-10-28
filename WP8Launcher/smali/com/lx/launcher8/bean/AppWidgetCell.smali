.class public Lcom/lx/launcher8/bean/AppWidgetCell;
.super Lcom/lx/launcher8/bean/ItemCell;
.source "AppWidgetCell.java"


# instance fields
.field public backBitmap:Landroid/graphics/Bitmap;

.field public widgetId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const v0, 0x18002

    invoke-direct {p0, v0}, Lcom/lx/launcher8/bean/AppWidgetCell;-><init>(I)V

    .line 23
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/lx/launcher8/bean/ItemCell;-><init>(I)V

    .line 27
    return-void
.end method


# virtual methods
.method public onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/lx/launcher8/bean/ItemCell;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 41
    const-string v0, "widgetId"

    iget v1, p0, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 42
    iget-object v0, p0, Lcom/lx/launcher8/bean/AppWidgetCell;->backBitmap:Landroid/graphics/Bitmap;

    const-string v1, "icon"

    invoke-static {p1, v0, v1}, Lcom/lx/launcher8/bean/AppWidgetCell;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public onRestoreState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/lx/launcher8/bean/ItemCell;->onRestoreState(Landroid/os/Bundle;)V

    .line 55
    iget-object v0, p0, Lcom/lx/launcher8/bean/AppWidgetCell;->intent:Landroid/content/Intent;

    const-string v1, "cell_widgetId"

    iget v2, p0, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    .line 56
    invoke-static {p1}, Lcom/lx/launcher8/util/Utils;->getIntentExtra(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/bean/AppWidgetCell;->backBitmap:Landroid/graphics/Bitmap;

    .line 57
    return-void
.end method

.method public onSaveState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/lx/launcher8/bean/ItemCell;->onSaveState(Landroid/os/Bundle;)V

    .line 48
    iget-object v0, p0, Lcom/lx/launcher8/bean/AppWidgetCell;->intent:Landroid/content/Intent;

    const-string v1, "cell_widgetId"

    iget v2, p0, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    iget-object v0, p0, Lcom/lx/launcher8/bean/AppWidgetCell;->backBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lcom/lx/launcher8/util/Utils;->putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    .line 50
    return-void
.end method

.method public read(Ljava/io/DataInput;I)Lcom/lx/launcher8/bean/AppWidgetCell;
    .locals 4
    .parameter "dis"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/bean/ItemCell;->read(Ljava/io/DataInput;I)Lcom/lx/launcher8/bean/ItemCell;

    .line 62
    const/4 v3, 0x4

    if-ge p2, v3, :cond_0

    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lx/launcher8/bean/AppWidgetCell;->title:Ljava/lang/String;

    .line 63
    :cond_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    .line 64
    const/4 v3, 0x2

    if-le p2, v3, :cond_1

    .line 65
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 66
    .local v2, len:I
    if-lez v2, :cond_1

    .line 67
    new-array v0, v2, [B

    .line 68
    .local v0, buffer:[B
    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    .line 70
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lx/launcher8/bean/AppWidgetCell;->backBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v0           #buffer:[B
    .end local v2           #len:I
    :cond_1
    :goto_0
    return-object p0

    .line 71
    .restart local v0       #buffer:[B
    .restart local v2       #len:I
    :catch_0
    move-exception v1

    .line 72
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "appCell save icon outOfMemory!!"

    invoke-static {v3}, Lcom/app/common/utils/ULog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic read(Ljava/io/DataInput;I)Lcom/lx/launcher8/bean/ItemCell;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/lx/launcher8/bean/AppWidgetCell;->read(Ljava/io/DataInput;I)Lcom/lx/launcher8/bean/AppWidgetCell;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic read(Ljava/io/DataInput;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/lx/launcher8/bean/AppWidgetCell;->read(Ljava/io/DataInput;I)Lcom/lx/launcher8/bean/AppWidgetCell;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/lx/launcher8/bean/ItemCell;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/lx/launcher8/bean/ItemCell;->setValue(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 32
    instance-of v1, p1, Lcom/lx/launcher8/bean/AppWidgetCell;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 33
    check-cast v0, Lcom/lx/launcher8/bean/AppWidgetCell;

    .line 34
    .local v0, ac:Lcom/lx/launcher8/bean/AppWidgetCell;
    iget-object v1, v0, Lcom/lx/launcher8/bean/AppWidgetCell;->backBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/lx/launcher8/bean/AppWidgetCell;->backBitmap:Landroid/graphics/Bitmap;

    .line 35
    iget v1, v0, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    iput v1, p0, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    .line 37
    .end local v0           #ac:Lcom/lx/launcher8/bean/AppWidgetCell;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/lx/launcher8/bean/ItemCell;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " AppWidgetCell(widgetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lx/launcher8/bean/AppWidgetCell;->widgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    const-string v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/bean/AppWidgetCell;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/DataOutput;)V
    .locals 2
    .parameter "dos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/lx/launcher8/bean/ItemCell;->write(Ljava/io/DataOutput;)V

    .line 84
    iget-object v1, p0, Lcom/lx/launcher8/bean/AppWidgetCell;->backBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 85
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 91
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/bean/AppWidgetCell;->backBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/lx/launcher8/bean/AppWidgetCell;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 88
    .local v0, buffer:[B
    array-length v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 89
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    goto :goto_0
.end method
