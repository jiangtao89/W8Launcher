.class public Lcom/lx/launcher8/setting/wp8/AddSpecialAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "AddSpecialAct.java"


# instance fields
.field private btnContact:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

.field private btnGallery:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

.field private btnHotApp:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

.field private btnLight:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

.field private btnLock:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

.field private btnMenu:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

.field private btnSearch:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

.field private btnShare:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

.field private btnTheme:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

.field private btnTime:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

.field private mClick:Landroid/view/View$OnClickListener;

.field private mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

.field private moudles:I

.field private onTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnTime:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    .line 26
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnLock:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    .line 27
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnGallery:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    .line 28
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnContact:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    .line 29
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnMenu:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    .line 30
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnLight:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    .line 31
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnHotApp:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    .line 32
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnSearch:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    .line 33
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnTheme:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    .line 34
    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnShare:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    .line 185
    new-instance v0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->mClick:Landroid/view/View$OnClickListener;

    .line 256
    new-instance v0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct$2;-><init>(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->onTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I

    return v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/AddSpecialAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 10

    .prologue
    const v9, 0x7f09000f

    const/16 v8, 0x14

    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 44
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030005

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 45
    .local v1, mMainView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "special"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I

    .line 47
    const v2, 0x7f09001d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnTime:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    .line 48
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnTime:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->onTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;)V

    .line 49
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnTime:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v6}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    .line 54
    :goto_0
    const v2, 0x7f09001c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnMenu:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    .line 55
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnMenu:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->onTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;)V

    .line 56
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnMenu:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v6}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    .line 61
    :goto_1
    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnLock:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    .line 62
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnLock:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->onTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;)V

    .line 63
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 64
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnLock:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v6}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    .line 69
    :goto_2
    const v2, 0x7f090020

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnGallery:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    .line 70
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnGallery:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->onTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;)V

    .line 71
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 72
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnGallery:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v6}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    .line 77
    :goto_3
    const v2, 0x7f09001e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnContact:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    .line 78
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnContact:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->onTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;)V

    .line 79
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    .line 80
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnContact:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v6}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    .line 85
    :goto_4
    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnLight:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    .line 86
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnLight:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->onTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;)V

    .line 87
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_5

    .line 88
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnLight:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v6}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    .line 93
    :goto_5
    const v2, 0x7f090034

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnHotApp:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    .line 94
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnHotApp:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->onTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;)V

    .line 95
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_6

    .line 96
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnHotApp:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v6}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    .line 101
    :goto_6
    const v2, 0x7f090027

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnSearch:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    .line 102
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnSearch:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->onTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;)V

    .line 103
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_7

    .line 104
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnSearch:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v6}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    .line 109
    :goto_7
    const v2, 0x7f090032

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnTheme:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    .line 110
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnTheme:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->onTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;)V

    .line 111
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_8

    .line 112
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnTheme:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v6}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    .line 117
    :goto_8
    const v2, 0x7f090036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    iput-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnShare:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    .line 118
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnShare:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->onTouchOverListener:Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;)V

    .line 119
    iget v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_9

    .line 120
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnShare:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v6}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    .line 125
    :goto_9
    const v2, 0x7f09001f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v2, 0x7f090021

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v2, 0x7f090023

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v2, 0x7f090028

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v0

    .line 131
    .local v0, fitColor:I
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v2}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v2

    if-eqz v2, :cond_a

    .line 132
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 133
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnTime:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v8}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    .line 134
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnLock:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v8}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    .line 135
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnGallery:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v8}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    .line 136
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnContact:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v8}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    .line 137
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnMenu:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v8}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    .line 138
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnLight:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v8}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    .line 139
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnHotApp:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v8}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    .line 140
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnSearch:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v8}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    .line 141
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnTheme:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v8}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    .line 142
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnShare:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v8}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    .line 156
    :goto_a
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnTime:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v0}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setFitColor(I)V

    .line 157
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnLock:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v0}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setFitColor(I)V

    .line 158
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnGallery:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v0}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setFitColor(I)V

    .line 159
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnContact:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v0}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setFitColor(I)V

    .line 160
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnMenu:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v0}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setFitColor(I)V

    .line 161
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnLight:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v0}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setFitColor(I)V

    .line 162
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnHotApp:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v0}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setFitColor(I)V

    .line 163
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnSearch:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v0}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setFitColor(I)V

    .line 164
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnTheme:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v0}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setFitColor(I)V

    .line 165
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnShare:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v0}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setFitColor(I)V

    .line 167
    const v2, 0x7f09002a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 168
    const v2, 0x7f090024

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 169
    const v2, 0x7f09002d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 170
    const v2, 0x7f09002b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 171
    const v2, 0x7f09002c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 172
    const v2, 0x7f09002e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 173
    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 174
    const v2, 0x7f09002f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 175
    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 176
    const v2, 0x7f090033

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 177
    const v2, 0x7f090026

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 178
    const v2, 0x7f090029

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 179
    const v2, 0x7f090031

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 180
    const v2, 0x7f090035

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 182
    return-object v1

    .line 52
    .end local v0           #fitColor:I
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnTime:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    goto/16 :goto_0

    .line 59
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnMenu:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    goto/16 :goto_1

    .line 66
    :cond_2
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnLock:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    goto/16 :goto_2

    .line 74
    :cond_3
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnGallery:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    goto/16 :goto_3

    .line 82
    :cond_4
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnContact:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    goto/16 :goto_4

    .line 90
    :cond_5
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnLight:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    goto/16 :goto_5

    .line 98
    :cond_6
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnHotApp:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    goto/16 :goto_6

    .line 106
    :cond_7
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnSearch:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    goto/16 :goto_7

    .line 114
    :cond_8
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnTheme:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    goto/16 :goto_8

    .line 122
    :cond_9
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnShare:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setState(Z)V

    goto/16 :goto_9

    .line 144
    .restart local v0       #fitColor:I
    :cond_a
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 145
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnTime:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v7}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    .line 146
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnLock:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v7}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    .line 147
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnGallery:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v7}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    .line 148
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnContact:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v7}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    .line 149
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnMenu:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v7}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    .line 150
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnLight:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v7}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    .line 151
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnHotApp:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v7}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    .line 152
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnSearch:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v7}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    .line 153
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnTheme:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v7}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    .line 154
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->btnShare:Lcom/lx/launcher8/setting/wp8/view/SeekButton;

    invoke-virtual {v2, v7}, Lcom/lx/launcher8/setting/wp8/view/SeekButton;->setThemeColor(I)V

    goto/16 :goto_a
.end method


# virtual methods
.method protected initData()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/cfg/DeskSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 40
    const v0, 0x7f0a00c5

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->createView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 41
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 337
    invoke-super {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onPause()V

    .line 338
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "special"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/AddSpecialAct;->moudles:I

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/AnallApp;->setSpecialValue(II)V

    .line 339
    return-void
.end method
