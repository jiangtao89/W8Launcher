.class public Lcom/lx/launcher8/ProposeAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "ProposeAct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/ProposeAct$ProposeTask;
    }
.end annotation


# static fields
.field private static mProposeText:Ljava/lang/String;


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    return-void
.end method

.method private InitView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x3

    .line 34
    const v0, 0x7f09009e

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/ProposeAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lx/launcher8/ProposeAct;->mEditText:Landroid/widget/EditText;

    .line 35
    iget-object v0, p0, Lcom/lx/launcher8/ProposeAct;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 36
    iget-object v0, p0, Lcom/lx/launcher8/ProposeAct;->mEditText:Landroid/widget/EditText;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 37
    iget-object v0, p0, Lcom/lx/launcher8/ProposeAct;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 38
    iget-object v0, p0, Lcom/lx/launcher8/ProposeAct;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/lx/launcher8/ProposeAct;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 39
    sget-object v0, Lcom/lx/launcher8/ProposeAct;->mProposeText:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lx/launcher8/ProposeAct;->mProposeText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/lx/launcher8/ProposeAct;->mEditText:Landroid/widget/EditText;

    sget-object v1, Lcom/lx/launcher8/ProposeAct;->mProposeText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :cond_0
    const v0, 0x7f09009f

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/ProposeAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/ProposeAct;->mTextView:Landroid/widget/TextView;

    .line 44
    iget-object v0, p0, Lcom/lx/launcher8/ProposeAct;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 45
    iget-object v0, p0, Lcom/lx/launcher8/ProposeAct;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    iget-object v0, p0, Lcom/lx/launcher8/ProposeAct;->mTextView:Landroid/widget/TextView;

    const/high16 v1, 0x4188

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 47
    iget-object v0, p0, Lcom/lx/launcher8/ProposeAct;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/ProposeAct;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/lx/launcher8/ProposeAct;->mTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/lx/launcher8/ProposeAct$1;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/ProposeAct$1;-><init>(Lcom/lx/launcher8/ProposeAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    sput-object p0, Lcom/lx/launcher8/ProposeAct;->mProposeText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/lx/launcher8/ProposeAct;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lx/launcher8/ProposeAct;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/ProposeAct;->setContentView(I)V

    .line 30
    invoke-direct {p0}, Lcom/lx/launcher8/ProposeAct;->InitView()V

    .line 31
    return-void
.end method
