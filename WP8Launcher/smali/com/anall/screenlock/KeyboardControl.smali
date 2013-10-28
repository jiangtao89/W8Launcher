.class public Lcom/anall/screenlock/KeyboardControl;
.super Ljava/lang/Object;
.source "KeyboardControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anall/screenlock/KeyboardControl$OnKeyboardEvent;
    }
.end annotation


# static fields
.field static final FLAG_SHOW_ERROR:I = 0x4

.field static final FLAG_SHOW_HIT:I = 0x2

.field static final FLAG_SHOW_PWD:I = 0x1


# instance fields
.field mErrorInputCount:I

.field mFlag:I

.field mInputTv:Landroid/widget/TextView;

.field mKeyboardListener:Lcom/anall/screenlock/KeyboardControl$OnKeyboardEvent;

.field mRoot:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "color"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anall/screenlock/KeyboardControl;->mRoot:Landroid/view/View;

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/anall/screenlock/KeyboardControl;->setupViews(Landroid/content/Context;I)V

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/anall/screenlock/KeyboardControl;->mFlag:I

    .line 47
    return-void
.end method

.method private restErrorCount()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/anall/screenlock/KeyboardControl;->mErrorInputCount:I

    .line 116
    return-void
.end method

.method private setErrorMode()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/anall/screenlock/KeyboardControl;->mInputTv:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    iget-object v0, p0, Lcom/anall/screenlock/KeyboardControl;->mInputTv:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 103
    return-void
.end method

.method private setFlag(IZ)V
    .locals 2
    .parameter "mask"
    .parameter "value"

    .prologue
    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/anall/screenlock/KeyboardControl;->mFlag:I

    .line 107
    if-eqz p2, :cond_0

    .line 108
    iget v0, p0, Lcom/anall/screenlock/KeyboardControl;->mFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/anall/screenlock/KeyboardControl;->mFlag:I

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iget v0, p0, Lcom/anall/screenlock/KeyboardControl;->mFlag:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/anall/screenlock/KeyboardControl;->mFlag:I

    goto :goto_0
.end method

.method private setInputMode()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/anall/screenlock/KeyboardControl;->mInputTv:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    iget-object v0, p0, Lcom/anall/screenlock/KeyboardControl;->mInputTv:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 98
    return-void
.end method

.method private setupViews(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "color"

    .prologue
    .line 50
    iget-object v1, p0, Lcom/anall/screenlock/KeyboardControl;->mRoot:Landroid/view/View;

    const v2, 0x7f090154

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/anall/screenlock/KeyboardControl;->mInputTv:Landroid/widget/TextView;

    .line 51
    iget-object v1, p0, Lcom/anall/screenlock/KeyboardControl;->mRoot:Landroid/view/View;

    const v2, 0x7f090157

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v1, p0, Lcom/anall/screenlock/KeyboardControl;->mRoot:Landroid/view/View;

    const v2, 0x7f090158

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v1, p0, Lcom/anall/screenlock/KeyboardControl;->mRoot:Landroid/view/View;

    const v2, 0x7f090155

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anall/screenlock/KeyboardLayout;

    .line 55
    .local v0, kl:Lcom/anall/screenlock/KeyboardLayout;
    invoke-virtual {v0, p1, p0, p2}, Lcom/anall/screenlock/KeyboardLayout;->initViews(Landroid/content/Context;Landroid/view/View$OnClickListener;I)V

    .line 57
    iget-object v1, p0, Lcom/anall/screenlock/KeyboardControl;->mInputTv:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 58
    iget-object v1, p0, Lcom/anall/screenlock/KeyboardControl;->mInputTv:Landroid/widget/TextView;

    new-instance v2, Lcom/anall/screenlock/KeyboardControl$1;

    invoke-direct {v2, p0, p1}, Lcom/anall/screenlock/KeyboardControl$1;-><init>(Lcom/anall/screenlock/KeyboardControl;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 76
    return-void
.end method


# virtual methods
.method protected appendText(Ljava/lang/String;)V
    .locals 4
    .parameter "num"

    .prologue
    const/4 v3, 0x1

    .line 79
    iget v1, p0, Lcom/anall/screenlock/KeyboardControl;->mFlag:I

    and-int/lit8 v1, v1, 0x1

    if-eq v1, v3, :cond_1

    .line 80
    iget v1, p0, Lcom/anall/screenlock/KeyboardControl;->mFlag:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/anall/screenlock/KeyboardControl;->setInputMode()V

    .line 83
    :cond_0
    const/16 v0, 0x80

    .line 87
    .local v0, inputType:I
    iget-object v1, p0, Lcom/anall/screenlock/KeyboardControl;->mInputTv:Landroid/widget/TextView;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 88
    invoke-direct {p0, v3, v3}, Lcom/anall/screenlock/KeyboardControl;->setFlag(IZ)V

    .line 89
    iget-object v1, p0, Lcom/anall/screenlock/KeyboardControl;->mInputTv:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-direct {p0}, Lcom/anall/screenlock/KeyboardControl;->restErrorCount()V

    .line 92
    .end local v0           #inputType:I
    :cond_1
    iget-object v1, p0, Lcom/anall/screenlock/KeyboardControl;->mInputTv:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/anall/screenlock/KeyboardControl;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method public hideForgetFunction()V
    .locals 3

    .prologue
    .line 183
    iget-object v1, p0, Lcom/anall/screenlock/KeyboardControl;->mRoot:Landroid/view/View;

    const v2, 0x7f090156

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 184
    .local v0, view:Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/16 v4, 0x43

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 144
    .local v0, id:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 145
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/anall/screenlock/KeyboardControl;->appendText(Ljava/lang/String;)V

    .line 148
    .end local v0           #id:I
    :cond_0
    :goto_0
    return-void

    .line 121
    :sswitch_0
    iget-object v2, p0, Lcom/anall/screenlock/KeyboardControl;->mKeyboardListener:Lcom/anall/screenlock/KeyboardControl$OnKeyboardEvent;

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/anall/screenlock/KeyboardControl;->mKeyboardListener:Lcom/anall/screenlock/KeyboardControl$OnKeyboardEvent;

    invoke-interface {v2, p0}, Lcom/anall/screenlock/KeyboardControl$OnKeyboardEvent;->onEmergencyCall(Lcom/anall/screenlock/KeyboardControl;)V

    goto :goto_0

    .line 126
    :sswitch_1
    iget-object v2, p0, Lcom/anall/screenlock/KeyboardControl;->mKeyboardListener:Lcom/anall/screenlock/KeyboardControl$OnKeyboardEvent;

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/anall/screenlock/KeyboardControl;->mKeyboardListener:Lcom/anall/screenlock/KeyboardControl$OnKeyboardEvent;

    invoke-interface {v2, p0}, Lcom/anall/screenlock/KeyboardControl$OnKeyboardEvent;->onForgetPwd(Lcom/anall/screenlock/KeyboardControl;)V

    goto :goto_0

    .line 137
    :sswitch_2
    iget v2, p0, Lcom/anall/screenlock/KeyboardControl;->mFlag:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 138
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 139
    .local v1, ke:Landroid/view/KeyEvent;
    iget-object v2, p0, Lcom/anall/screenlock/KeyboardControl;->mInputTv:Landroid/widget/TextView;

    invoke-virtual {v2, v4, v1}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 119
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090059 -> :sswitch_2
        0x7f090157 -> :sswitch_0
        0x7f090158 -> :sswitch_1
    .end sparse-switch
.end method

.method public setErrorText(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 169
    iget v0, p0, Lcom/anall/screenlock/KeyboardControl;->mFlag:I

    and-int/lit8 v0, v0, 0x4

    if-eq v0, v2, :cond_0

    .line 170
    iget-object v0, p0, Lcom/anall/screenlock/KeyboardControl;->mInputTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 171
    invoke-direct {p0, v2, v1}, Lcom/anall/screenlock/KeyboardControl;->setFlag(IZ)V

    .line 172
    invoke-direct {p0}, Lcom/anall/screenlock/KeyboardControl;->setErrorMode()V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/anall/screenlock/KeyboardControl;->mInputTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    return-void
.end method

.method public setHitText(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 159
    iget v0, p0, Lcom/anall/screenlock/KeyboardControl;->mFlag:I

    and-int/lit8 v0, v0, 0x2

    if-eq v0, v2, :cond_0

    .line 160
    iget-object v0, p0, Lcom/anall/screenlock/KeyboardControl;->mInputTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 161
    invoke-direct {p0, v2, v1}, Lcom/anall/screenlock/KeyboardControl;->setFlag(IZ)V

    .line 162
    invoke-direct {p0}, Lcom/anall/screenlock/KeyboardControl;->restErrorCount()V

    .line 163
    invoke-direct {p0}, Lcom/anall/screenlock/KeyboardControl;->setInputMode()V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/anall/screenlock/KeyboardControl;->mInputTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    return-void
.end method

.method public setOnKeyBoardEvent(Lcom/anall/screenlock/KeyboardControl$OnKeyboardEvent;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/anall/screenlock/KeyboardControl;->mKeyboardListener:Lcom/anall/screenlock/KeyboardControl$OnKeyboardEvent;

    .line 152
    return-void
.end method

.method public showForgetFunction()V
    .locals 3

    .prologue
    .line 178
    iget-object v1, p0, Lcom/anall/screenlock/KeyboardControl;->mRoot:Landroid/view/View;

    const v2, 0x7f090156

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 179
    .local v0, view:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    return-void
.end method
