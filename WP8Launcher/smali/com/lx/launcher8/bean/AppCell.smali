.class public Lcom/lx/launcher8/bean/AppCell;
.super Lcom/lx/launcher8/bean/ItemCell;
.source "AppCell.java"


# instance fields
.field public icon:Landroid/graphics/Bitmap;

.field public icon2:Landroid/graphics/Bitmap;

.field public iconPath:Ljava/lang/String;

.field public iconType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const v0, 0x38000

    invoke-direct {p0, v0}, Lcom/lx/launcher8/bean/AppCell;-><init>(I)V

    .line 25
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/lx/launcher8/bean/ItemCell;-><init>(I)V

    .line 29
    return-void
.end method


# virtual methods
.method public onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/lx/launcher8/bean/ItemCell;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 46
    const-string v0, "iconType"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    const-string v0, "container"

    iget-wide v1, p0, Lcom/lx/launcher8/bean/AppCell;->container:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 49
    iget-object v0, p0, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    const-string v1, "icon"

    invoke-static {p1, v0, v1}, Lcom/lx/launcher8/bean/AppCell;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/lx/launcher8/bean/AppCell;->icon2:Landroid/graphics/Bitmap;

    const-string v1, "icon2"

    invoke-static {p1, v0, v1}, Lcom/lx/launcher8/bean/AppCell;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onRestoreState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/lx/launcher8/bean/ItemCell;->onRestoreState(Landroid/os/Bundle;)V

    .line 67
    const-string v0, "cell_iconType"

    iget v1, p0, Lcom/lx/launcher8/bean/AppCell;->iconType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/bean/AppCell;->iconType:I

    .line 68
    invoke-static {p1}, Lcom/lx/launcher8/util/Utils;->getIntentExtra(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    .line 69
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lx/launcher8/util/Utils;->getIntentExtra(Landroid/os/Bundle;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/bean/AppCell;->icon2:Landroid/graphics/Bitmap;

    .line 70
    const-string v0, "cell_iconPath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "cell_iconPath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/bean/AppCell;->iconPath:Ljava/lang/String;

    .line 72
    :cond_0
    return-void
.end method

.method public onSaveState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/lx/launcher8/bean/ItemCell;->onSaveState(Landroid/os/Bundle;)V

    .line 59
    const-string v0, "cell_iconType"

    iget v1, p0, Lcom/lx/launcher8/bean/AppCell;->iconType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    iget-object v0, p0, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lcom/lx/launcher8/util/Utils;->putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    .line 61
    iget-object v0, p0, Lcom/lx/launcher8/bean/AppCell;->icon2:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/lx/launcher8/util/Utils;->putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;I)V

    .line 62
    const-string v0, "cell_iconPath"

    iget-object v1, p0, Lcom/lx/launcher8/bean/AppCell;->iconPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public read(Ljava/io/DataInput;I)Lcom/lx/launcher8/bean/AppCell;
    .locals 4
    .parameter "dis"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/bean/ItemCell;->read(Ljava/io/DataInput;I)Lcom/lx/launcher8/bean/ItemCell;

    .line 77
    const/4 v3, 0x4

    if-ge p2, v3, :cond_0

    .line 78
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    .line 79
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v3

    iput v3, p0, Lcom/lx/launcher8/bean/AppCell;->textColor:I

    .line 80
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v3

    iput v3, p0, Lcom/lx/launcher8/bean/AppCell;->gravity:I

    .line 82
    :cond_0
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v3

    iput v3, p0, Lcom/lx/launcher8/bean/AppCell;->iconType:I

    .line 83
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lx/launcher8/bean/AppCell;->iconPath:Ljava/lang/String;

    .line 84
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 85
    .local v2, len:I
    if-lez v2, :cond_1

    .line 86
    new-array v0, v2, [B

    .line 87
    .local v0, buffer:[B
    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    .line 89
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0           #buffer:[B
    :cond_1
    :goto_0
    const/16 v3, 0x8

    if-lt p2, v3, :cond_2

    .line 96
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 97
    if-lez v2, :cond_2

    .line 98
    new-array v0, v2, [B

    .line 99
    .restart local v0       #buffer:[B
    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    .line 101
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lx/launcher8/bean/AppCell;->icon2:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    .end local v0           #buffer:[B
    :cond_2
    :goto_1
    return-object p0

    .line 90
    .restart local v0       #buffer:[B
    :catch_0
    move-exception v1

    .line 91
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "appCell save icon outOfMemory!!"

    invoke-static {v3}, Lcom/app/common/utils/ULog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    .line 103
    .restart local v1       #e:Ljava/lang/OutOfMemoryError;
    const-string v3, "appCell save icon2 outOfMemory!!"

    invoke-static {v3}, Lcom/app/common/utils/ULog;->w(Ljava/lang/String;)V

    goto :goto_1
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
    invoke-virtual {p0, p1, p2}, Lcom/lx/launcher8/bean/AppCell;->read(Ljava/io/DataInput;I)Lcom/lx/launcher8/bean/AppCell;

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
    invoke-virtual {p0, p1, p2}, Lcom/lx/launcher8/bean/AppCell;->read(Ljava/io/DataInput;I)Lcom/lx/launcher8/bean/AppCell;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/lx/launcher8/bean/ItemCell;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/lx/launcher8/bean/ItemCell;->setValue(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 34
    instance-of v1, p1, Lcom/lx/launcher8/bean/AppCell;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 35
    check-cast v0, Lcom/lx/launcher8/bean/AppCell;

    .line 36
    .local v0, info:Lcom/lx/launcher8/bean/AppCell;
    iget v1, v0, Lcom/lx/launcher8/bean/AppCell;->iconType:I

    iput v1, p0, Lcom/lx/launcher8/bean/AppCell;->iconType:I

    .line 37
    iget-object v1, v0, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    .line 38
    iget-object v1, v0, Lcom/lx/launcher8/bean/AppCell;->icon2:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/lx/launcher8/bean/AppCell;->icon2:Landroid/graphics/Bitmap;

    .line 39
    iget-object v1, v0, Lcom/lx/launcher8/bean/AppCell;->iconPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/lx/launcher8/bean/AppCell;->iconPath:Ljava/lang/String;

    .line 41
    .end local v0           #info:Lcom/lx/launcher8/bean/AppCell;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, iconCode:I
    const/4 v1, 0x0

    .line 138
    .local v1, iconCode2:I
    iget-object v2, p0, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/bean/AppCell;->icon2:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lx/launcher8/bean/AppCell;->icon2:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 140
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/lx/launcher8/bean/ItemCell;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " AppCell(title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/bean/AppCell;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 141
    const-string v3, "textColor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lx/launcher8/bean/AppCell;->textColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 142
    const-string v3, "iconType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lx/launcher8/bean/AppCell;->iconType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 143
    const-string v3, "icon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 144
    const-string v3, "icon2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 145
    const-string v3, "iconPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/bean/AppCell;->iconPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 146
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public write(Ljava/io/DataOutput;)V
    .locals 3
    .parameter "dos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-super {p0, p1}, Lcom/lx/launcher8/bean/ItemCell;->write(Ljava/io/DataOutput;)V

    .line 114
    iget v1, p0, Lcom/lx/launcher8/bean/AppCell;->iconType:I

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 115
    iget-object v1, p0, Lcom/lx/launcher8/bean/AppCell;->iconPath:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    iput-object v1, p0, Lcom/lx/launcher8/bean/AppCell;->iconPath:Ljava/lang/String;

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/bean/AppCell;->iconPath:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 118
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/lx/launcher8/bean/AppCell;->icon2:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 126
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 132
    :goto_1
    return-void

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/lx/launcher8/bean/AppCell;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 121
    .local v0, buffer:[B
    array-length v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 122
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    goto :goto_0

    .line 128
    .end local v0           #buffer:[B
    :cond_2
    iget-object v1, p0, Lcom/lx/launcher8/bean/AppCell;->icon2:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/lx/launcher8/bean/AppCell;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 129
    .restart local v0       #buffer:[B
    array-length v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 130
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    goto :goto_1
.end method
