.class Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$11;
.super Ljava/lang/Object;
.source "SpecialSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->onBack()Z
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
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$11;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 630
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$11;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 631
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView$11;->this$0:Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->mAct:Landroid/app/Activity;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;->access$1(Lcom/lx/launcher8/setting/wp8/view/SpecialSettingView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 632
    return-void
.end method
