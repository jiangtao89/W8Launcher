.class public Lcom/lx/launcher8/setting/AddSpecialAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "AddSpecialAct.java"


# instance fields
.field private btnContact:Lcom/lx/launcher8/view/SeekButton;

.field private btnGallery:Lcom/lx/launcher8/view/SeekButton;

.field private btnLight:Lcom/lx/launcher8/view/SeekButton;

.field private btnLock:Lcom/lx/launcher8/view/SeekButton;

.field private btnMenu:Lcom/lx/launcher8/view/SeekButton;

.field private btnTime:Lcom/lx/launcher8/view/SeekButton;

.field private mClick:Landroid/view/View$OnClickListener;

.field private mFirstTitle:Landroid/widget/TextView;

.field private moudles:I

.field private onTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnTime:Lcom/lx/launcher8/view/SeekButton;

    .line 33
    iput-object v0, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnLock:Lcom/lx/launcher8/view/SeekButton;

    .line 34
    iput-object v0, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnGallery:Lcom/lx/launcher8/view/SeekButton;

    .line 35
    iput-object v0, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnContact:Lcom/lx/launcher8/view/SeekButton;

    .line 36
    iput-object v0, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnMenu:Lcom/lx/launcher8/view/SeekButton;

    .line 37
    iput-object v0, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnLight:Lcom/lx/launcher8/view/SeekButton;

    .line 119
    new-instance v0, Lcom/lx/launcher8/setting/AddSpecialAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/AddSpecialAct$1;-><init>(Lcom/lx/launcher8/setting/AddSpecialAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->mClick:Landroid/view/View$OnClickListener;

    .line 174
    new-instance v0, Lcom/lx/launcher8/setting/AddSpecialAct$2;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/AddSpecialAct$2;-><init>(Lcom/lx/launcher8/setting/AddSpecialAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->onTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/AddSpecialAct;)I
    .locals 1
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I

    return v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/AddSpecialAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput p1, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/AddSpecialAct;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/AddSpecialAct;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "special"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I

    .line 45
    const v2, 0x7f090006

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/AddSpecialAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->mFirstTitle:Landroid/widget/TextView;

    .line 46
    iget-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->mFirstTitle:Landroid/widget/TextView;

    const v3, 0x7f0a00c5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 47
    iget-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->mFirstTitle:Landroid/widget/TextView;

    new-instance v3, Lcom/lx/launcher8/setting/AddSpecialAct$3;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/setting/AddSpecialAct$3;-><init>(Lcom/lx/launcher8/setting/AddSpecialAct;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v2, 0x7f09001d

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/AddSpecialAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/view/SeekButton;

    iput-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnTime:Lcom/lx/launcher8/view/SeekButton;

    .line 58
    iget-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnTime:Lcom/lx/launcher8/view/SeekButton;

    iget-object v3, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->onTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 59
    iget v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnTime:Lcom/lx/launcher8/view/SeekButton;

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/view/SeekButton;->setState(Z)V

    .line 65
    :goto_0
    const v2, 0x7f09001b

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/AddSpecialAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/view/SeekButton;

    iput-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnLock:Lcom/lx/launcher8/view/SeekButton;

    .line 66
    iget-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnLock:Lcom/lx/launcher8/view/SeekButton;

    iget-object v3, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->onTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 67
    iget v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnLock:Lcom/lx/launcher8/view/SeekButton;

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/view/SeekButton;->setState(Z)V

    .line 73
    :goto_1
    const v2, 0x7f090020

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/AddSpecialAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/view/SeekButton;

    iput-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnGallery:Lcom/lx/launcher8/view/SeekButton;

    .line 74
    iget-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnGallery:Lcom/lx/launcher8/view/SeekButton;

    iget-object v3, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->onTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 75
    iget v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 76
    iget-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnGallery:Lcom/lx/launcher8/view/SeekButton;

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/view/SeekButton;->setState(Z)V

    .line 81
    :goto_2
    const v2, 0x7f09001e

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/AddSpecialAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/view/SeekButton;

    iput-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnContact:Lcom/lx/launcher8/view/SeekButton;

    .line 82
    iget-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnContact:Lcom/lx/launcher8/view/SeekButton;

    iget-object v3, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->onTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 83
    iget v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 84
    iget-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnContact:Lcom/lx/launcher8/view/SeekButton;

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/view/SeekButton;->setState(Z)V

    .line 89
    :goto_3
    const v2, 0x7f09001c

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/AddSpecialAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/view/SeekButton;

    iput-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnMenu:Lcom/lx/launcher8/view/SeekButton;

    .line 90
    iget-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnMenu:Lcom/lx/launcher8/view/SeekButton;

    iget-object v3, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->onTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 91
    iget v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    .line 92
    iget-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnMenu:Lcom/lx/launcher8/view/SeekButton;

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/view/SeekButton;->setState(Z)V

    .line 97
    :goto_4
    const v2, 0x7f090022

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/AddSpecialAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/view/SeekButton;

    iput-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnLight:Lcom/lx/launcher8/view/SeekButton;

    .line 98
    iget-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnLight:Lcom/lx/launcher8/view/SeekButton;

    iget-object v3, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->onTouchOverListener:Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/view/SeekButton;->setOnTouchOverListener(Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;)V

    .line 99
    iget v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_5

    .line 100
    iget-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnLight:Lcom/lx/launcher8/view/SeekButton;

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/view/SeekButton;->setState(Z)V

    .line 105
    :goto_5
    const v2, 0x7f09001f

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/AddSpecialAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v2, 0x7f090021

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/AddSpecialAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v2, 0x7f090023

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/setting/AddSpecialAct;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/AddSpecialAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 110
    .local v0, btn:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 111
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 112
    iget-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnTime:Lcom/lx/launcher8/view/SeekButton;

    invoke-virtual {v2, v1}, Lcom/lx/launcher8/view/SeekButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnLock:Lcom/lx/launcher8/view/SeekButton;

    invoke-virtual {v2, v1}, Lcom/lx/launcher8/view/SeekButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnGallery:Lcom/lx/launcher8/view/SeekButton;

    invoke-virtual {v2, v1}, Lcom/lx/launcher8/view/SeekButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnContact:Lcom/lx/launcher8/view/SeekButton;

    invoke-virtual {v2, v1}, Lcom/lx/launcher8/view/SeekButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnLight:Lcom/lx/launcher8/view/SeekButton;

    invoke-virtual {v2, v1}, Lcom/lx/launcher8/view/SeekButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    return-void

    .line 62
    .end local v0           #btn:Landroid/graphics/Bitmap;
    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnTime:Lcom/lx/launcher8/view/SeekButton;

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/view/SeekButton;->setState(Z)V

    goto/16 :goto_0

    .line 70
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnLock:Lcom/lx/launcher8/view/SeekButton;

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/view/SeekButton;->setState(Z)V

    goto/16 :goto_1

    .line 78
    :cond_2
    iget-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnGallery:Lcom/lx/launcher8/view/SeekButton;

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/view/SeekButton;->setState(Z)V

    goto/16 :goto_2

    .line 86
    :cond_3
    iget-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnContact:Lcom/lx/launcher8/view/SeekButton;

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/view/SeekButton;->setState(Z)V

    goto/16 :goto_3

    .line 94
    :cond_4
    iget-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnMenu:Lcom/lx/launcher8/view/SeekButton;

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/view/SeekButton;->setState(Z)V

    goto/16 :goto_4

    .line 102
    :cond_5
    iget-object v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->btnLight:Lcom/lx/launcher8/view/SeekButton;

    invoke-virtual {v2, v4}, Lcom/lx/launcher8/view/SeekButton;->setState(Z)V

    goto/16 :goto_5
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 226
    invoke-super {p0}, Lcom/lx/launcher8/NoSearchAct;->onPause()V

    .line 227
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lx/launcher8/setting/AddSpecialAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "special"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Lcom/lx/launcher8/setting/AddSpecialAct;->moudles:I

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/AnallApp;->setSpecialValue(II)V

    .line 228
    return-void
.end method
