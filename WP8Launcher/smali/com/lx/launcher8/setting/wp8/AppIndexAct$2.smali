.class Lcom/lx/launcher8/setting/wp8/AppIndexAct$2;
.super Ljava/lang/Object;
.source "AppIndexAct.java"

# interfaces
.implements Lcom/lx/launcher8/setting/wp8/view/SeekButton$OnTouchOverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/AppIndexAct;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/AppIndexAct;

.field private final synthetic val$dropDown:Lcom/anall/statusbar/DropDowmLinearLayout;

.field private final synthetic val$tv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/AppIndexAct;Landroid/widget/TextView;Lcom/anall/statusbar/DropDowmLinearLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/AppIndexAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AppIndexAct;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/AppIndexAct$2;->val$tv:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lx/launcher8/setting/wp8/AppIndexAct$2;->val$dropDown:Lcom/anall/statusbar/DropDowmLinearLayout;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchOver(Lcom/lx/launcher8/setting/wp8/view/SeekButton;Z)V
    .locals 3
    .parameter "seekButton"
    .parameter "enable"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppIndexAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AppIndexAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/AppIndexAct;->mAppSetting:Lcom/lx/launcher8/cfg/AppSetting;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/AppIndexAct;->access$0(Lcom/lx/launcher8/setting/wp8/AppIndexAct;)Lcom/lx/launcher8/cfg/AppSetting;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lx/launcher8/cfg/AppSetting;->setThemeAppListHeader(Z)V

    .line 91
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/AppIndexAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/AppIndexAct;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/AppIndexAct$2;->val$tv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/AppIndexAct$2;->val$dropDown:Lcom/anall/statusbar/DropDowmLinearLayout;

    #calls: Lcom/lx/launcher8/setting/wp8/AppIndexAct;->changeState(Landroid/view/View;Landroid/view/View;Z)V
    invoke-static {v0, v1, v2, p2}, Lcom/lx/launcher8/setting/wp8/AppIndexAct;->access$1(Lcom/lx/launcher8/setting/wp8/AppIndexAct;Landroid/view/View;Landroid/view/View;Z)V

    .line 92
    return-void
.end method
