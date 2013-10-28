.class public Lcom/lx/launcher8/setting/view/DialogSaveTheme;
.super Landroid/app/Dialog;
.source "DialogSaveTheme.java"


# instance fields
.field private cancel:Landroid/widget/Button;

.field private mAbout:Landroid/widget/TextView;

.field private mButtons:Landroid/widget/LinearLayout;

.field private mContents:Landroid/widget/LinearLayout;

.field public mEditText:Landroid/widget/EditText;

.field private mProgeress:Landroid/widget/ProgressBar;

.field private mTitle:Landroid/widget/TextView;

.field private ok:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 30
    invoke-direct {p0}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->initView()V

    .line 31
    return-void
.end method

.method private initView()V
    .locals 8

    .prologue
    .line 34
    const v4, 0x7f03002e

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->setContentView(I)V

    .line 35
    const v4, 0x7f0900d6

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mTitle:Landroid/widget/TextView;

    .line 36
    const v4, 0x7f0900d7

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mContents:Landroid/widget/LinearLayout;

    .line 37
    const v4, 0x7f0900d8

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mProgeress:Landroid/widget/ProgressBar;

    .line 38
    const v4, 0x7f0900d9

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mAbout:Landroid/widget/TextView;

    .line 39
    const v4, 0x7f0900da

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mEditText:Landroid/widget/EditText;

    .line 40
    const v4, 0x7f0900db

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mButtons:Landroid/widget/LinearLayout;

    .line 41
    const v4, 0x7f0900dc

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->ok:Landroid/widget/Button;

    .line 42
    const v4, 0x7f0900dd

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->cancel:Landroid/widget/Button;

    .line 44
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 45
    .local v3, width:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 47
    .local v0, hight:I
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 49
    .local v1, min:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 50
    .local v2, p:Landroid/view/WindowManager$LayoutParams;
    int-to-double v4, v1

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 51
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 52
    return-void
.end method


# virtual methods
.method public createProgress(Ljava/lang/String;)Lcom/lx/launcher8/setting/view/DialogSaveTheme;
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 64
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mContents:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mProgeress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mAbout:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mAbout:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mAbout:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mAbout:Landroid/widget/TextView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 70
    return-object p0
.end method

.method public createSaveTheme()Lcom/lx/launcher8/setting/view/DialogSaveTheme;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mContents:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mAbout:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 60
    return-object p0
.end method

.method public createWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lx/launcher8/setting/view/DialogSaveTheme;
    .locals 4
    .parameter "title"
    .parameter "about"
    .parameter "ok"
    .parameter "cancel"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 74
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 76
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mContents:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mAbout:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mAbout:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mAbout:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    if-eqz p3, :cond_0

    .line 83
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->ok:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :goto_0
    if-eqz p4, :cond_1

    .line 88
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->cancel:Landroid/widget/Button;

    invoke-virtual {v0, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :goto_1
    return-object p0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->ok:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->cancel:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method public getEditTextValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "click"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->ok:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->cancel:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method

.method public showHitInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "about"
    .parameter "ok"
    .parameter "cancel"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 98
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mContents:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mAbout:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mAbout:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mAbout:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->mButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    if-eqz p3, :cond_0

    .line 106
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->ok:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :goto_0
    if-eqz p4, :cond_1

    .line 111
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->cancel:Landroid/widget/Button;

    invoke-virtual {v0, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :goto_1
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->ok:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->cancel:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method
