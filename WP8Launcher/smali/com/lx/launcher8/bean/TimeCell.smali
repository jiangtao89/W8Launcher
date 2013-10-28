.class public Lcom/lx/launcher8/bean/TimeCell;
.super Lcom/lx/launcher8/bean/ItemCell;
.source "TimeCell.java"


# instance fields
.field public backBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const v0, 0x28004

    invoke-direct {p0, v0}, Lcom/lx/launcher8/bean/ItemCell;-><init>(I)V

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/lx/launcher8/bean/TimeCell;->gravity:I

    .line 22
    return-void
.end method


# virtual methods
.method public onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/lx/launcher8/bean/ItemCell;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 48
    iget-object v0, p0, Lcom/lx/launcher8/bean/TimeCell;->backBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/lx/launcher8/bean/TimeCell;->backBitmap:Landroid/graphics/Bitmap;

    const-string v1, "icon"

    invoke-static {p1, v0, v1}, Lcom/lx/launcher8/bean/TimeCell;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method

.method public onRestoreState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/lx/launcher8/bean/ItemCell;->onRestoreState(Landroid/os/Bundle;)V

    .line 42
    invoke-static {p1}, Lcom/lx/launcher8/util/Utils;->getIntentExtra(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/bean/TimeCell;->backBitmap:Landroid/graphics/Bitmap;

    .line 43
    return-void
.end method

.method public onSaveState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/lx/launcher8/bean/ItemCell;->onSaveState(Landroid/os/Bundle;)V

    .line 36
    iget-object v0, p0, Lcom/lx/launcher8/bean/TimeCell;->backBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lcom/lx/launcher8/util/Utils;->putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    .line 37
    return-void
.end method

.method public read(Ljava/io/DataInput;I)Lcom/lx/launcher8/bean/ItemCell;
    .locals 1
    .parameter "dis"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/bean/ItemCell;->read(Ljava/io/DataInput;I)Lcom/lx/launcher8/bean/ItemCell;

    .line 56
    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Lcom/lx/launcher8/bean/TimeCell;->readBitmap(Ljava/io/DataInput;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/bean/TimeCell;->backBitmap:Landroid/graphics/Bitmap;

    .line 59
    :cond_0
    const/4 v0, 0x2

    if-le p2, v0, :cond_2

    .line 60
    const/4 v0, 0x4

    if-ge p2, v0, :cond_1

    .line 61
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/bean/TimeCell;->textColor:I

    .line 62
    :cond_1
    const/4 v0, 0x5

    if-ge p2, v0, :cond_2

    .line 63
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/bean/TimeCell;->gravity:I

    .line 65
    :cond_2
    return-object p0
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
    invoke-virtual {p0, p1, p2}, Lcom/lx/launcher8/bean/TimeCell;->read(Ljava/io/DataInput;I)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/lx/launcher8/bean/ItemCell;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/lx/launcher8/bean/ItemCell;->setValue(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 27
    instance-of v1, p1, Lcom/lx/launcher8/bean/TimeCell;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 28
    check-cast v0, Lcom/lx/launcher8/bean/TimeCell;

    .line 29
    .local v0, time:Lcom/lx/launcher8/bean/TimeCell;
    iget-object v1, v0, Lcom/lx/launcher8/bean/TimeCell;->backBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/lx/launcher8/bean/TimeCell;->backBitmap:Landroid/graphics/Bitmap;

    .line 31
    .end local v0           #time:Lcom/lx/launcher8/bean/TimeCell;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, bitmapCode:I
    iget-object v1, p0, Lcom/lx/launcher8/bean/TimeCell;->backBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lx/launcher8/bean/TimeCell;->backBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 78
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/lx/launcher8/bean/ItemCell;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " TimeCell(backBitmap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 79
    const-string v2, "textColor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lx/launcher8/bean/TimeCell;->textColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 80
    const-string v2, "gravity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lx/launcher8/bean/TimeCell;->gravity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 81
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public write(Ljava/io/DataOutput;)V
    .locals 1
    .parameter "dos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/lx/launcher8/bean/ItemCell;->write(Ljava/io/DataOutput;)V

    .line 71
    iget-object v0, p0, Lcom/lx/launcher8/bean/TimeCell;->backBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0}, Lcom/lx/launcher8/bean/TimeCell;->saveBitmap(Ljava/io/DataOutput;Landroid/graphics/Bitmap;)V

    .line 72
    return-void
.end method
