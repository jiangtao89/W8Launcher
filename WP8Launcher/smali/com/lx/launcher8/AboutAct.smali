.class public Lcom/lx/launcher8/AboutAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "AboutAct.java"


# instance fields
.field private anall:Landroid/widget/TextView;

.field private imgWp8:Landroid/widget/ImageView;

.field private listener:Landroid/view/View$OnClickListener;

.field private text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    .line 28
    new-instance v0, Lcom/lx/launcher8/AboutAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/AboutAct$1;-><init>(Lcom/lx/launcher8/AboutAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/AboutAct;->listener:Landroid/view/View$OnClickListener;

    .line 11
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AboutAct;->setContentView(I)V

    .line 19
    const v0, 0x7f090003

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AboutAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lx/launcher8/AboutAct;->imgWp8:Landroid/widget/ImageView;

    .line 20
    const v0, 0x7f090005

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AboutAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/AboutAct;->text:Landroid/widget/TextView;

    .line 21
    const v0, 0x7f090004

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/AboutAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/AboutAct;->anall:Landroid/widget/TextView;

    .line 22
    iget-object v0, p0, Lcom/lx/launcher8/AboutAct;->imgWp8:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lx/launcher8/AboutAct;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/lx/launcher8/AboutAct;->anall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lx/launcher8/AboutAct;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/lx/launcher8/AboutAct;->anall:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lx/launcher8/AboutAct;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Lcom/lx/launcher8/AboutAct;->text:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lx/launcher8/AboutAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lx/launcher8/AboutAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    return-void
.end method
