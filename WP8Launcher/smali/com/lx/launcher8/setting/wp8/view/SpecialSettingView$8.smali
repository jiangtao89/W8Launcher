.class Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$8;
.super Ljava/lang/Object;
.source "SpecialSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$8;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$8;)Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;
    .locals 1
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$8;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 298
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$8;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$0(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$8;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0035

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12c

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 299
    new-instance v0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$8$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$8$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$8;)V

    .line 308
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$8$2;

    invoke-direct {v1, p0, v0}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$8$2;-><init>(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$8;Landroid/os/Handler;)V

    .line 322
    invoke-virtual {v1}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$8$2;->start()V

    .line 323
    return-void
.end method
