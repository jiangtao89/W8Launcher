.class Lcom/anall/screenlock/WPLockAct$1;
.super Ljava/lang/Object;
.source "WPLockAct.java"

# interfaces
.implements Lcom/anall/screenlock/KeyboardControl$OnKeyboardEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anall/screenlock/WPLockAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mErrorCount:I

.field final synthetic this$0:Lcom/anall/screenlock/WPLockAct;


# direct methods
.method constructor <init>(Lcom/anall/screenlock/WPLockAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anall/screenlock/WPLockAct$1;->this$0:Lcom/anall/screenlock/WPLockAct;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/anall/screenlock/WPLockAct$1;)Lcom/anall/screenlock/WPLockAct;
    .locals 1
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct$1;->this$0:Lcom/anall/screenlock/WPLockAct;

    return-object v0
.end method


# virtual methods
.method public onEmergencyCall(Lcom/anall/screenlock/KeyboardControl;)V
    .locals 0
    .parameter "kc"

    .prologue
    .line 245
    return-void
.end method

.method public onForgetPwd(Lcom/anall/screenlock/KeyboardControl;)V
    .locals 4
    .parameter "kc"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct$1;->this$0:Lcom/anall/screenlock/WPLockAct;

    #getter for: Lcom/anall/screenlock/WPLockAct;->mForgetView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/anall/screenlock/WPLockAct;->access$2(Lcom/anall/screenlock/WPLockAct;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 235
    iget-object v1, p0, Lcom/anall/screenlock/WPLockAct$1;->this$0:Lcom/anall/screenlock/WPLockAct;

    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct$1;->this$0:Lcom/anall/screenlock/WPLockAct;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03004f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    #setter for: Lcom/anall/screenlock/WPLockAct;->mForgetView:Landroid/view/ViewGroup;
    invoke-static {v1, v0}, Lcom/anall/screenlock/WPLockAct;->access$3(Lcom/anall/screenlock/WPLockAct;Landroid/view/ViewGroup;)V

    .line 236
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct$1;->this$0:Lcom/anall/screenlock/WPLockAct;

    #calls: Lcom/anall/screenlock/WPLockAct;->setupForgetViews()V
    invoke-static {v0}, Lcom/anall/screenlock/WPLockAct;->access$4(Lcom/anall/screenlock/WPLockAct;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct$1;->this$0:Lcom/anall/screenlock/WPLockAct;

    #getter for: Lcom/anall/screenlock/WPLockAct;->mForgetView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/anall/screenlock/WPLockAct;->access$2(Lcom/anall/screenlock/WPLockAct;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/anall/screenlock/WPLockAct$1;->this$0:Lcom/anall/screenlock/WPLockAct;

    #getter for: Lcom/anall/screenlock/WPLockAct;->mRoot:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/anall/screenlock/WPLockAct;->access$5(Lcom/anall/screenlock/WPLockAct;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/anall/screenlock/WPLockAct$1;->this$0:Lcom/anall/screenlock/WPLockAct;

    #getter for: Lcom/anall/screenlock/WPLockAct;->mForgetView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/anall/screenlock/WPLockAct;->access$2(Lcom/anall/screenlock/WPLockAct;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 241
    :cond_1
    return-void
.end method

.method public onInputOk(Lcom/anall/screenlock/KeyboardControl;Ljava/lang/String;Z)Z
    .locals 16
    .parameter "kc"
    .parameter "input"
    .parameter "userConfirm"

    .prologue
    .line 198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anall/screenlock/WPLockAct$1;->this$0:Lcom/anall/screenlock/WPLockAct;

    #getter for: Lcom/anall/screenlock/WPLockAct;->mLockKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/anall/screenlock/WPLockAct;->access$0(Lcom/anall/screenlock/WPLockAct;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    const/4 v3, 0x2

    new-array v13, v3, [I

    .line 200
    .local v13, loc:[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anall/screenlock/WPLockAct$1;->this$0:Lcom/anall/screenlock/WPLockAct;

    #getter for: Lcom/anall/screenlock/WPLockAct;->lockview:Lcom/anall/screenlock/LockLayout;
    invoke-static {v3}, Lcom/anall/screenlock/WPLockAct;->access$1(Lcom/anall/screenlock/WPLockAct;)Lcom/anall/screenlock/LockLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/anall/screenlock/LockLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 201
    .local v14, v:Landroid/view/View;
    invoke-virtual {v14, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 202
    const-wide/16 v11, 0xfa

    .line 203
    .local v11, during:J
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 204
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    neg-int v9, v9

    const/4 v10, 0x1

    aget v10, v13, v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    .line 203
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 205
    .local v1, t1:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 206
    invoke-virtual {v14, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anall/screenlock/WPLockAct$1;->this$0:Lcom/anall/screenlock/WPLockAct;

    #getter for: Lcom/anall/screenlock/WPLockAct;->lockview:Lcom/anall/screenlock/LockLayout;
    invoke-static {v3}, Lcom/anall/screenlock/WPLockAct;->access$1(Lcom/anall/screenlock/WPLockAct;)Lcom/anall/screenlock/LockLayout;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/anall/screenlock/LockLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 208
    invoke-virtual {v14, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 209
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 210
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/anall/screenlock/WPLockAct$1;->this$0:Lcom/anall/screenlock/WPLockAct;

    invoke-virtual {v10}, Lcom/anall/screenlock/WPLockAct;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v15, 0x1

    aget v15, v13, v15

    sub-int/2addr v10, v15

    int-to-float v10, v10

    .line 209
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 211
    .local v2, t2:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 212
    invoke-virtual {v14, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anall/screenlock/WPLockAct$1;->this$0:Lcom/anall/screenlock/WPLockAct;

    #getter for: Lcom/anall/screenlock/WPLockAct;->lockview:Lcom/anall/screenlock/LockLayout;
    invoke-static {v3}, Lcom/anall/screenlock/WPLockAct;->access$1(Lcom/anall/screenlock/WPLockAct;)Lcom/anall/screenlock/LockLayout;

    move-result-object v3

    new-instance v4, Lcom/anall/screenlock/WPLockAct$1$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/anall/screenlock/WPLockAct$1$1;-><init>(Lcom/anall/screenlock/WPLockAct$1;)V

    .line 218
    const-wide/16 v5, 0xfa

    .line 214
    invoke-virtual {v3, v4, v5, v6}, Lcom/anall/screenlock/LockLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 219
    const/4 v3, 0x1

    .line 229
    .end local v1           #t1:Landroid/view/animation/TranslateAnimation;
    .end local v2           #t2:Landroid/view/animation/TranslateAnimation;
    .end local v11           #during:J
    .end local v13           #loc:[I
    .end local v14           #v:Landroid/view/View;
    :goto_0
    return v3

    .line 221
    :cond_0
    if-nez p3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anall/screenlock/WPLockAct$1;->this$0:Lcom/anall/screenlock/WPLockAct;

    #getter for: Lcom/anall/screenlock/WPLockAct;->mLockKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/anall/screenlock/WPLockAct;->access$0(Lcom/anall/screenlock/WPLockAct;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_2

    .line 222
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/anall/screenlock/WPLockAct$1;->mErrorCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/anall/screenlock/WPLockAct$1;->mErrorCount:I

    .line 223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anall/screenlock/WPLockAct$1;->this$0:Lcom/anall/screenlock/WPLockAct;

    const v4, 0x7f0a021f

    invoke-virtual {v3, v4}, Lcom/anall/screenlock/WPLockAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/anall/screenlock/KeyboardControl;->setErrorText(Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, p0

    iget v3, v0, Lcom/anall/screenlock/WPLockAct$1;->mErrorCount:I

    const/4 v4, 0x5

    if-le v3, v4, :cond_2

    .line 225
    invoke-virtual/range {p1 .. p1}, Lcom/anall/screenlock/KeyboardControl;->showForgetFunction()V

    .line 226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/anall/screenlock/WPLockAct$1;->this$0:Lcom/anall/screenlock/WPLockAct;

    #getter for: Lcom/anall/screenlock/WPLockAct;->lockview:Lcom/anall/screenlock/LockLayout;
    invoke-static {v3}, Lcom/anall/screenlock/WPLockAct;->access$1(Lcom/anall/screenlock/WPLockAct;)Lcom/anall/screenlock/LockLayout;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/anall/screenlock/WPLockAct$1;->this$0:Lcom/anall/screenlock/WPLockAct;

    #getter for: Lcom/anall/screenlock/WPLockAct;->lockview:Lcom/anall/screenlock/LockLayout;
    invoke-static {v5}, Lcom/anall/screenlock/WPLockAct;->access$1(Lcom/anall/screenlock/WPLockAct;)Lcom/anall/screenlock/LockLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/anall/screenlock/LockLayout;->getHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/anall/screenlock/WPLockAct$1;->this$0:Lcom/anall/screenlock/WPLockAct;

    #getter for: Lcom/anall/screenlock/WPLockAct;->lockview:Lcom/anall/screenlock/LockLayout;
    invoke-static {v6}, Lcom/anall/screenlock/WPLockAct;->access$1(Lcom/anall/screenlock/WPLockAct;)Lcom/anall/screenlock/LockLayout;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/anall/screenlock/LockLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/anall/screenlock/LockLayout;->scrollTo(II)V

    .line 229
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
