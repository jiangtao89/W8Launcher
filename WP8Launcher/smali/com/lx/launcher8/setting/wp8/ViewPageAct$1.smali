.class Lcom/lx/launcher8/setting/wp8/ViewPageAct$1;
.super Ljava/lang/Object;
.source "ViewPageAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/ViewPageAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const-wide/16 v10, 0xfa

    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 327
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget-object v3, v3, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget v3, v3, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->bottomTextVisible:I

    if-ne v3, v5, :cond_2

    .line 332
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    const/4 v4, 0x0

    iput v4, v3, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->bottomTextVisible:I

    .line 337
    :goto_1
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget v3, v3, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->bottomTextVisible:I

    if-ne v3, v5, :cond_3

    .line 338
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 340
    const v8, 0x3eb33333

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    .line 338
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 341
    .local v0, anim:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 342
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 343
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 334
    .end local v0           #anim:Landroid/view/animation/TranslateAnimation;
    :cond_2
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iput v5, v3, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->bottomTextVisible:I

    goto :goto_1

    .line 344
    :cond_3
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget v3, v3, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->bottomTextVisible:I

    if-nez v3, :cond_0

    .line 346
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    :try_start_0
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget-object v3, v3, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->layoutBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lt v9, v3, :cond_4

    .line 351
    :goto_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 352
    const v6, 0x3ecccccd

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    .line 351
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 354
    .restart local v0       #anim:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 355
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 356
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 347
    .end local v0           #anim:Landroid/view/animation/TranslateAnimation;
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget-object v3, v3, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->layoutBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ViewPageAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ViewPageAct;

    iget v4, v4, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->bottomTextVisible:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 346
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 349
    :catch_0
    move-exception v3

    goto :goto_3
.end method
