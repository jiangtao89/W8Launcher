.class Lcom/lx/launcher8/setting/FolderSettingAct$1;
.super Ljava/lang/Object;
.source "FolderSettingAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/FolderSettingAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/FolderSettingAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/FolderSettingAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/FolderSettingAct$1;)Lcom/lx/launcher8/setting/FolderSettingAct;
    .locals 1
    .parameter

    .prologue
    .line 286
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 290
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 291
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 408
    :goto_0
    return-void

    .line 294
    :sswitch_0
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    #getter for: Lcom/lx/launcher8/setting/FolderSettingAct;->folderset:[I
    invoke-static {v8}, Lcom/lx/launcher8/setting/FolderSettingAct;->access$0(Lcom/lx/launcher8/setting/FolderSettingAct;)[I

    move-result-object v8

    aget v8, v8, v9

    if-ne v8, v10, :cond_0

    .line 295
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    #getter for: Lcom/lx/launcher8/setting/FolderSettingAct;->mFCellView:Lcom/lx/launcher8/view/FolderCellView;
    invoke-static {v8}, Lcom/lx/launcher8/setting/FolderSettingAct;->access$1(Lcom/lx/launcher8/setting/FolderSettingAct;)Lcom/lx/launcher8/view/FolderCellView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lx/launcher8/view/FolderCellView;->onStart()V

    .line 296
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    #calls: Lcom/lx/launcher8/setting/FolderSettingAct;->showERROR()V
    invoke-static {v8}, Lcom/lx/launcher8/setting/FolderSettingAct;->access$2(Lcom/lx/launcher8/setting/FolderSettingAct;)V

    goto :goto_0

    .line 298
    :cond_0
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    const-class v9, Lcom/lx/launcher8/setting/IconPickAct;

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 300
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 301
    .local v2, b:Landroid/os/Bundle;
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    #getter for: Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;
    invoke-static {v8}, Lcom/lx/launcher8/setting/FolderSettingAct;->access$3(Lcom/lx/launcher8/setting/FolderSettingAct;)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v8

    iget-object v8, v8, Lcom/lx/launcher8/bean/FolderCell;->icon:Landroid/graphics/Bitmap;

    invoke-static {v2, v8}, Lcom/lx/launcher8/util/Utils;->putIntentExtra(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    .line 302
    const-string v8, "aspectX"

    iget-object v9, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    #getter for: Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;
    invoke-static {v9}, Lcom/lx/launcher8/setting/FolderSettingAct;->access$3(Lcom/lx/launcher8/setting/FolderSettingAct;)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v9

    iget v9, v9, Lcom/lx/launcher8/bean/FolderCell;->spanX:I

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 303
    const-string v8, "aspectY"

    iget-object v9, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    #getter for: Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;
    invoke-static {v9}, Lcom/lx/launcher8/setting/FolderSettingAct;->access$3(Lcom/lx/launcher8/setting/FolderSettingAct;)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v9

    iget v9, v9, Lcom/lx/launcher8/bean/FolderCell;->spanY:I

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 304
    invoke-virtual {v5, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 305
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    const/16 v9, 0x18

    invoke-virtual {v8, v5, v9}, Lcom/lx/launcher8/setting/FolderSettingAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 309
    .end local v2           #b:Landroid/os/Bundle;
    :sswitch_1
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    #getter for: Lcom/lx/launcher8/setting/FolderSettingAct;->folderset:[I
    invoke-static {v8}, Lcom/lx/launcher8/setting/FolderSettingAct;->access$0(Lcom/lx/launcher8/setting/FolderSettingAct;)[I

    move-result-object v8

    aget v8, v8, v9

    if-ne v8, v10, :cond_1

    .line 310
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    #getter for: Lcom/lx/launcher8/setting/FolderSettingAct;->mFCellView:Lcom/lx/launcher8/view/FolderCellView;
    invoke-static {v8}, Lcom/lx/launcher8/setting/FolderSettingAct;->access$1(Lcom/lx/launcher8/setting/FolderSettingAct;)Lcom/lx/launcher8/view/FolderCellView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lx/launcher8/view/FolderCellView;->onStart()V

    .line 311
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    #calls: Lcom/lx/launcher8/setting/FolderSettingAct;->showERROR()V
    invoke-static {v8}, Lcom/lx/launcher8/setting/FolderSettingAct;->access$2(Lcom/lx/launcher8/setting/FolderSettingAct;)V

    goto :goto_0

    .line 313
    :cond_1
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    const-class v9, Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 314
    const-string v8, "PAGE"

    const/16 v9, 0x2bc

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    const-string v8, "extral_value"

    iget-object v9, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    #getter for: Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;
    invoke-static {v9}, Lcom/lx/launcher8/setting/FolderSettingAct;->access$3(Lcom/lx/launcher8/setting/FolderSettingAct;)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lx/launcher8/bean/FolderCell;->getImgGravity()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    const/16 v9, 0x14

    invoke-virtual {v8, v5, v9}, Lcom/lx/launcher8/setting/FolderSettingAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 320
    :sswitch_2
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    const-class v9, Lcom/lx/launcher8/setting/SizePickAct;

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 321
    const-string v8, "extral_info"

    iget-object v9, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    #getter for: Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;
    invoke-static {v9}, Lcom/lx/launcher8/setting/FolderSettingAct;->access$3(Lcom/lx/launcher8/setting/FolderSettingAct;)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lx/launcher8/bean/FolderCell;->getSize()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    const/16 v9, 0x15

    invoke-virtual {v8, v5, v9}, Lcom/lx/launcher8/setting/FolderSettingAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 326
    :sswitch_3
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    #getter for: Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;
    invoke-static {v8}, Lcom/lx/launcher8/setting/FolderSettingAct;->access$3(Lcom/lx/launcher8/setting/FolderSettingAct;)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/lx/launcher8/bean/FolderCell;->setIntentParam(Landroid/content/Intent;)V

    .line 327
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    const-class v9, Lcom/lx/launcher8/setting/FolderAppPickAct;

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 328
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    const/16 v9, 0x12

    invoke-virtual {v8, v5, v9}, Lcom/lx/launcher8/setting/FolderSettingAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 331
    :sswitch_4
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    const-class v9, Lcom/lx/launcher8/setting/ColorPickerAct;

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 332
    const-string v8, "extral_type"

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    const-string v8, "changeid"

    const v9, 0x7f090145

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    const/16 v9, 0x17

    invoke-virtual {v8, v5, v9}, Lcom/lx/launcher8/setting/FolderSettingAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 337
    :sswitch_5
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    const-class v9, Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 338
    const-string v8, "PAGE"

    const/16 v9, 0xb4

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    #getter for: Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;
    invoke-static {v8}, Lcom/lx/launcher8/setting/FolderSettingAct;->access$3(Lcom/lx/launcher8/setting/FolderSettingAct;)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lx/launcher8/bean/FolderCell;->getCellAlphaBg()I

    move-result v8

    rsub-int v1, v8, 0xff

    .line 340
    .local v1, alpha:I
    mul-int/lit8 v8, v1, 0x64

    div-int/lit16 v1, v8, 0xff

    .line 341
    const-string v8, "extral_value"

    invoke-virtual {v5, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 343
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    #getter for: Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;
    invoke-static {v8}, Lcom/lx/launcher8/setting/FolderSettingAct;->access$3(Lcom/lx/launcher8/setting/FolderSettingAct;)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lx/launcher8/bean/FolderCell;->getCellAlphaFg()I

    move-result v8

    rsub-int v1, v8, 0xff

    .line 344
    mul-int/lit8 v8, v1, 0x64

    div-int/lit16 v1, v8, 0xff

    .line 345
    const-string v8, "extral_value1"

    invoke-virtual {v5, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    #getter for: Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;
    invoke-static {v8}, Lcom/lx/launcher8/setting/FolderSettingAct;->access$3(Lcom/lx/launcher8/setting/FolderSettingAct;)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lx/launcher8/bean/FolderCell;->getTextAlpha()I

    move-result v1

    .line 348
    mul-int/lit8 v8, v1, 0x64

    div-int/lit16 v1, v8, 0xff

    .line 349
    const-string v8, "extral_value2"

    invoke-virtual {v5, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 350
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    const/16 v9, 0x16

    invoke-virtual {v8, v5, v9}, Lcom/lx/launcher8/setting/FolderSettingAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 353
    .end local v1           #alpha:I
    :sswitch_6
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    const-class v9, Lcom/lx/launcher8/setting/SettingDeskItemsAct;

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 354
    const-string v8, "PAGE"

    const/16 v9, 0x578

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    const-string v8, "extral_value"

    iget-object v9, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    #getter for: Lcom/lx/launcher8/setting/FolderSettingAct;->folderset:[I
    invoke-static {v9}, Lcom/lx/launcher8/setting/FolderSettingAct;->access$0(Lcom/lx/launcher8/setting/FolderSettingAct;)[I

    move-result-object v9

    const/4 v10, 0x2

    aget v9, v9, v10

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 356
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    const/16 v9, 0x19

    invoke-virtual {v8, v5, v9}, Lcom/lx/launcher8/setting/FolderSettingAct;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 359
    :sswitch_7
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 360
    .restart local v5       #intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    #getter for: Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;
    invoke-static {v8}, Lcom/lx/launcher8/setting/FolderSettingAct;->access$3(Lcom/lx/launcher8/setting/FolderSettingAct;)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v8

    iget-object v9, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    #getter for: Lcom/lx/launcher8/setting/FolderSettingAct;->mFolderName:Lcom/lx/launcher8/view/SettingLinearLayout;
    invoke-static {v9}, Lcom/lx/launcher8/setting/FolderSettingAct;->access$4(Lcom/lx/launcher8/setting/FolderSettingAct;)Lcom/lx/launcher8/view/SettingLinearLayout;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lx/launcher8/view/SettingLinearLayout;->getEditText()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/lx/launcher8/bean/FolderCell;->title:Ljava/lang/String;

    .line 361
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    #getter for: Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;
    invoke-static {v8}, Lcom/lx/launcher8/setting/FolderSettingAct;->access$3(Lcom/lx/launcher8/setting/FolderSettingAct;)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/lx/launcher8/bean/FolderCell;->setIntentParam(Landroid/content/Intent;)V

    .line 362
    const-string v8, "extral_page"

    iget-object v9, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    #getter for: Lcom/lx/launcher8/setting/FolderSettingAct;->whichWay:I
    invoke-static {v9}, Lcom/lx/launcher8/setting/FolderSettingAct;->access$5(Lcom/lx/launcher8/setting/FolderSettingAct;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 363
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    const/4 v9, -0x1

    invoke-virtual {v8, v9, v5}, Lcom/lx/launcher8/setting/FolderSettingAct;->setResult(ILandroid/content/Intent;)V

    .line 364
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    invoke-virtual {v8}, Lcom/lx/launcher8/setting/FolderSettingAct;->finish()V

    goto/16 :goto_0

    .line 367
    :sswitch_8
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    invoke-virtual {v8, v9}, Lcom/lx/launcher8/setting/FolderSettingAct;->setResult(I)V

    .line 368
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    invoke-virtual {v8}, Lcom/lx/launcher8/setting/FolderSettingAct;->finish()V

    goto/16 :goto_0

    .line 371
    :sswitch_9
    new-instance v4, Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    const v9, 0x7f0e0005

    invoke-direct {v4, v8, v9}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;-><init>(Landroid/content/Context;I)V

    .line 372
    .local v4, dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;
    new-instance v8, Lcom/lx/launcher8/setting/FolderSettingAct$1$1;

    invoke-direct {v8, p0, v4}, Lcom/lx/launcher8/setting/FolderSettingAct$1$1;-><init>(Lcom/lx/launcher8/setting/FolderSettingAct$1;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V

    invoke-virtual {v4, v8}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    const v9, 0x7f0a01c4

    invoke-virtual {v8, v9}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 388
    .local v7, title:Ljava/lang/String;
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    const v9, 0x7f0a0133

    invoke-virtual {v8, v9}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, about:Ljava/lang/String;
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    const v9, 0x7f0a0077

    invoke-virtual {v8, v9}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 390
    .local v6, ok:Ljava/lang/String;
    iget-object v8, p0, Lcom/lx/launcher8/setting/FolderSettingAct$1;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    const v9, 0x7f0a0078

    invoke-virtual {v8, v9}, Lcom/lx/launcher8/setting/FolderSettingAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, cancel:Ljava/lang/String;
    invoke-virtual {v4, v7, v0, v6, v3}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->createWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->show()V

    goto/16 :goto_0

    .line 291
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_7
        0x21 -> :sswitch_8
        0x64 -> :sswitch_0
        0x7f09013d -> :sswitch_0
        0x7f09013f -> :sswitch_1
        0x7f090142 -> :sswitch_6
        0x7f090143 -> :sswitch_2
        0x7f090144 -> :sswitch_3
        0x7f090145 -> :sswitch_4
        0x7f090146 -> :sswitch_5
        0x7f090147 -> :sswitch_9
    .end sparse-switch
.end method
