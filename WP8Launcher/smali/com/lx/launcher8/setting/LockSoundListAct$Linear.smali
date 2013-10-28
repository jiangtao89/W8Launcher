.class Lcom/lx/launcher8/setting/LockSoundListAct$Linear;
.super Landroid/widget/LinearLayout;
.source "LockSoundListAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/LockSoundListAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Linear"
.end annotation


# instance fields
.field private centerText:Landroid/widget/TextView;

.field private leftIcon:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/lx/launcher8/setting/LockSoundListAct;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/LockSoundListAct;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->this$0:Lcom/lx/launcher8/setting/LockSoundListAct;

    .line 198
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 199
    iput-object p2, p0, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->mContext:Landroid/content/Context;

    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->setOrientation(I)V

    .line 201
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->setGravity(I)V

    .line 202
    invoke-direct {p0}, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->initData()V

    .line 203
    return-void
.end method

.method private initData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 206
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->leftIcon:Landroid/widget/ImageView;

    .line 208
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->centerText:Landroid/widget/TextView;

    .line 209
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->centerText:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x4180

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 210
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->centerText:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->centerText:Landroid/widget/TextView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 213
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->leftIcon:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->centerText:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    return-void
.end method


# virtual methods
.method public setCenterText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->centerText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    return-void
.end method

.method public setLeftIcon(I)V
    .locals 1
    .parameter "resource"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->leftIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 219
    return-void
.end method

.method public setLeftIconListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->leftIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    return-void
.end method

.method public setListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/lx/launcher8/setting/LockSoundListAct$Linear;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    return-void
.end method
