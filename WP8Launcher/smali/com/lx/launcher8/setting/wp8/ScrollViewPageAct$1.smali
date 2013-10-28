.class Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$1;
.super Ljava/lang/Object;
.source "ScrollViewPageAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    .line 165
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mBottomBtnLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    const/4 v2, 0x1

    #setter for: Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->isClicked:Z
    invoke-static {v1, v2}, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->access$0(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;Z)V

    .line 167
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget v1, v1, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->bottomTextVisible:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    const/4 v2, 0x0

    iput v2, v1, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->bottomTextVisible:I

    .line 169
    :goto_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget v1, v1, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->bottomTextVisible:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 170
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 171
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, 0x3ecccccd

    .line 170
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 172
    .local v0, anim:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 173
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 174
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 168
    .end local v0           #anim:Landroid/view/animation/TranslateAnimation;
    :cond_2
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    const/4 v2, 0x4

    iput v2, v1, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->bottomTextVisible:I

    goto :goto_1

    .line 175
    :cond_3
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget v1, v1, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->bottomTextVisible:I

    if-nez v1, :cond_0

    .line 177
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    :try_start_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mBottomBtnLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lt v10, v1, :cond_4

    .line 183
    :goto_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 184
    const/4 v5, 0x1

    const v6, 0x3ecccccd

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 183
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 185
    .restart local v0       #anim:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 186
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 187
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 178
    .end local v0           #anim:Landroid/view/animation/TranslateAnimation;
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mBottomBtnLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget v2, v2, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->bottomTextVisible:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 180
    :catch_0
    move-exception v9

    .line 181
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method
