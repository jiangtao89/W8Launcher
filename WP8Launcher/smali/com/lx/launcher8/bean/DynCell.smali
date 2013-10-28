.class public Lcom/lx/launcher8/bean/DynCell;
.super Lcom/lx/launcher8/bean/ItemCell;
.source "DynCell.java"


# instance fields
.field public icon:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "cellType"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/lx/launcher8/bean/ItemCell;-><init>(I)V

    .line 19
    return-void
.end method


# virtual methods
.method public isShowGroup()Z
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lcom/lx/launcher8/bean/DynCell;->gravity:I

    const/high16 v1, -0x8000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/lx/launcher8/bean/ItemCell;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 56
    iget-object v0, p0, Lcom/lx/launcher8/bean/DynCell;->icon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/lx/launcher8/bean/DynCell;->icon:Landroid/graphics/Bitmap;

    const-string v1, "icon"

    invoke-static {p1, v0, v1}, Lcom/lx/launcher8/bean/DynCell;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method

.method public onRestoreState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/lx/launcher8/bean/ItemCell;->onRestoreState(Landroid/os/Bundle;)V

    .line 39
    invoke-static {p1}, Lcom/lx/launcher8/util/Utils;->getIntentExtra(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/bean/DynCell;->icon:Landroid/graphics/Bitmap;

    .line 40
    return-void
.end method

.method public onSaveState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/lx/launcher8/bean/ItemCell;->onSaveState(Landroid/os/Bundle;)V

    .line 33
    iget-object v0, p0, Lcom/lx/launcher8/bean/DynCell;->icon:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lcom/lx/launcher8/util/Utils;->putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    .line 34
    return-void
.end method

.method public read(Ljava/io/DataInput;I)Lcom/lx/launcher8/bean/ItemCell;
    .locals 2
    .parameter "dis"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x5

    .line 63
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/bean/ItemCell;->read(Ljava/io/DataInput;I)Lcom/lx/launcher8/bean/ItemCell;

    .line 64
    const/4 v0, 0x4

    if-le p2, v0, :cond_1

    .line 65
    iget v0, p0, Lcom/lx/launcher8/bean/DynCell;->cellType:I

    and-int/lit16 v0, v0, 0xfff

    if-ne v0, v1, :cond_0

    .line 66
    if-le p2, v1, :cond_1

    .line 67
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lx/launcher8/bean/DynCell;->readBitmap(Ljava/io/DataInput;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/bean/DynCell;->icon:Landroid/graphics/Bitmap;

    .line 69
    :cond_1
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
    invoke-virtual {p0, p1, p2}, Lcom/lx/launcher8/bean/DynCell;->read(Ljava/io/DataInput;I)Lcom/lx/launcher8/bean/ItemCell;

    move-result-object v0

    return-object v0
.end method

.method public setShowGroup(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 46
    iget v0, p0, Lcom/lx/launcher8/bean/DynCell;->gravity:I

    const v1, 0x7fffffff

    and-int/2addr v1, v0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/lx/launcher8/bean/DynCell;->gravity:I

    .line 47
    return-void

    .line 46
    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public setValue(Lcom/lx/launcher8/bean/ItemCell;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/lx/launcher8/bean/ItemCell;->setValue(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 24
    instance-of v1, p1, Lcom/lx/launcher8/bean/DynCell;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 25
    check-cast v0, Lcom/lx/launcher8/bean/DynCell;

    .line 26
    .local v0, dc:Lcom/lx/launcher8/bean/DynCell;
    iget-object v1, v0, Lcom/lx/launcher8/bean/DynCell;->icon:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/lx/launcher8/bean/DynCell;->icon:Landroid/graphics/Bitmap;

    .line 28
    .end local v0           #dc:Lcom/lx/launcher8/bean/DynCell;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, iconCode:I
    iget-object v1, p0, Lcom/lx/launcher8/bean/DynCell;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lx/launcher8/bean/DynCell;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 82
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/lx/launcher8/bean/ItemCell;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " DynCell(icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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
    .line 74
    invoke-super {p0, p1}, Lcom/lx/launcher8/bean/ItemCell;->write(Ljava/io/DataOutput;)V

    .line 75
    iget-object v0, p0, Lcom/lx/launcher8/bean/DynCell;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0}, Lcom/lx/launcher8/bean/DynCell;->saveBitmap(Ljava/io/DataOutput;Landroid/graphics/Bitmap;)V

    .line 76
    return-void
.end method
