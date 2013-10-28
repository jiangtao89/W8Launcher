.class Lcom/lx/launcher8/view/KeywordsFlow$1;
.super Ljava/lang/Object;
.source "KeywordsFlow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/view/KeywordsFlow;->disapper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/view/KeywordsFlow;

.field private final synthetic val$txt:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/view/KeywordsFlow;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/view/KeywordsFlow$1;->this$0:Lcom/lx/launcher8/view/KeywordsFlow;

    iput-object p2, p0, Lcom/lx/launcher8/view/KeywordsFlow$1;->val$txt:Landroid/widget/TextView;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lx/launcher8/view/KeywordsFlow$1;->val$txt:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/lx/launcher8/view/KeywordsFlow$1;->val$txt:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 186
    iget-object v0, p0, Lcom/lx/launcher8/view/KeywordsFlow$1;->val$txt:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 181
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 178
    return-void
.end method
