.class Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$1;
.super Ljava/lang/Object;
.source "LockScreenPaperDetailAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 621
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->bottomTextVisible:I
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$0(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    const/4 v2, 0x0

    #setter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->bottomTextVisible:I
    invoke-static {v1, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$1(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;I)V

    .line 623
    :goto_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->bottomTextVisible:I
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$0(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 624
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 625
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, 0x3ecccccd

    .line 624
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 626
    .local v0, anim:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 627
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 628
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    const v2, 0x7f09005c

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 641
    .end local v0           #anim:Landroid/view/animation/TranslateAnimation;
    :cond_0
    :goto_1
    return-void

    .line 622
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    const/4 v2, 0x4

    #setter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->bottomTextVisible:I
    invoke-static {v1, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$1(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;I)V

    goto :goto_0

    .line 629
    :cond_2
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->bottomTextVisible:I
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$0(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I

    move-result v1

    if-nez v1, :cond_0

    .line 630
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnSelectTv:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$2(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->bottomTextVisible:I
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$0(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 631
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnCutTv:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$3(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->bottomTextVisible:I
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$0(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 632
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDelTv:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$4(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->bottomTextVisible:I
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$0(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 633
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnDownloadTv:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$5(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->bottomTextVisible:I
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$0(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 634
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->btnStopTv:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$6(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->bottomTextVisible:I
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->access$0(Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 635
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 636
    const/4 v5, 0x1

    const v6, 0x3ecccccd

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 635
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 637
    .restart local v0       #anim:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 638
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 639
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;

    const v2, 0x7f09005c

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/setting/wp8/LockScreenPaperDetailAct;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method
