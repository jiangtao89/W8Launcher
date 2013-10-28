.class Lcom/lx/launcher8/AnallLauncher$23;
.super Ljava/lang/Object;
.source "AnallLauncher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/AnallLauncher;->changeAppSort()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/AnallLauncher;

.field private final synthetic val$pop:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/AnallLauncher;Landroid/widget/PopupWindow;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/AnallLauncher$23;->this$0:Lcom/lx/launcher8/AnallLauncher;

    iput-object p2, p0, Lcom/lx/launcher8/AnallLauncher$23;->val$pop:Landroid/widget/PopupWindow;

    .line 1813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1816
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1824
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher$23;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #getter for: Lcom/lx/launcher8/AnallLauncher;->mAppSettings:Lcom/lx/launcher8/cfg/AppSetting;
    invoke-static {v0}, Lcom/lx/launcher8/AnallLauncher;->access$19(Lcom/lx/launcher8/AnallLauncher;)Lcom/lx/launcher8/cfg/AppSetting;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/cfg/AppSetting;->setAppSort(I)V

    .line 1827
    :goto_0
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher$23;->val$pop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1828
    return-void

    .line 1818
    :pswitch_0
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher$23;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #getter for: Lcom/lx/launcher8/AnallLauncher;->mAppSettings:Lcom/lx/launcher8/cfg/AppSetting;
    invoke-static {v0}, Lcom/lx/launcher8/AnallLauncher;->access$19(Lcom/lx/launcher8/AnallLauncher;)Lcom/lx/launcher8/cfg/AppSetting;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/cfg/AppSetting;->setAppSort(I)V

    goto :goto_0

    .line 1821
    :pswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher$23;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #getter for: Lcom/lx/launcher8/AnallLauncher;->mAppSettings:Lcom/lx/launcher8/cfg/AppSetting;
    invoke-static {v0}, Lcom/lx/launcher8/AnallLauncher;->access$19(Lcom/lx/launcher8/AnallLauncher;)Lcom/lx/launcher8/cfg/AppSetting;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/cfg/AppSetting;->setAppSort(I)V

    goto :goto_0

    .line 1816
    nop

    :pswitch_data_0
    .packed-switch 0x7f0901fe
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
