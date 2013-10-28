.class public Lcom/lx/launcher8/bean/LightCell;
.super Lcom/lx/launcher8/bean/AppCell;
.source "LightCell.java"


# instance fields
.field public lightLong:I

.field public lightMode:I

.field public openMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const v0, 0x38020

    invoke-direct {p0, v0}, Lcom/lx/launcher8/bean/LightCell;-><init>(I)V

    .line 15
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/lx/launcher8/bean/AppCell;-><init>(I)V

    .line 19
    return-void
.end method


# virtual methods
.method public onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lx/launcher8/bean/LightCell;->openMode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lx/launcher8/bean/LightCell;->lightMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lx/launcher8/bean/LightCell;->lightLong:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/bean/LightCell;->appName:Ljava/lang/String;

    .line 35
    invoke-super {p0, p1}, Lcom/lx/launcher8/bean/AppCell;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 36
    return-void
.end method

.method public onInitFromDatabse()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    iget-object v2, p0, Lcom/lx/launcher8/bean/LightCell;->appName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 41
    iput v3, p0, Lcom/lx/launcher8/bean/LightCell;->openMode:I

    .line 42
    iput v3, p0, Lcom/lx/launcher8/bean/LightCell;->lightMode:I

    .line 43
    iput v3, p0, Lcom/lx/launcher8/bean/LightCell;->lightLong:I

    .line 63
    :cond_0
    return-void

    .line 47
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/bean/LightCell;->appName:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, arr:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 49
    packed-switch v1, :pswitch_data_0

    .line 48
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :pswitch_0
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/app/common/utils/UConvert;->toInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/lx/launcher8/bean/LightCell;->openMode:I

    goto :goto_1

    .line 54
    :pswitch_1
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/app/common/utils/UConvert;->toInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/lx/launcher8/bean/LightCell;->lightMode:I

    goto :goto_1

    .line 57
    :pswitch_2
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/app/common/utils/UConvert;->toInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/lx/launcher8/bean/LightCell;->lightLong:I

    goto :goto_1

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setValue(Lcom/lx/launcher8/bean/ItemCell;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/lx/launcher8/bean/AppCell;->setValue(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 24
    instance-of v1, p1, Lcom/lx/launcher8/bean/LightCell;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 25
    check-cast v0, Lcom/lx/launcher8/bean/LightCell;

    .line 26
    .local v0, info:Lcom/lx/launcher8/bean/LightCell;
    iget v1, v0, Lcom/lx/launcher8/bean/LightCell;->openMode:I

    iput v1, p0, Lcom/lx/launcher8/bean/LightCell;->openMode:I

    .line 27
    iget v1, v0, Lcom/lx/launcher8/bean/LightCell;->lightMode:I

    iput v1, p0, Lcom/lx/launcher8/bean/LightCell;->lightMode:I

    .line 28
    iget v1, v0, Lcom/lx/launcher8/bean/LightCell;->lightLong:I

    iput v1, p0, Lcom/lx/launcher8/bean/LightCell;->lightLong:I

    .line 30
    .end local v0           #info:Lcom/lx/launcher8/bean/LightCell;
    :cond_0
    return-void
.end method
