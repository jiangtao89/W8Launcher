.class Lcom/lx/launcher8/setting/wp8/IconPickAct$2;
.super Ljava/lang/Object;
.source "IconPickAct.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/IconPickAct;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/IconPickAct;

.field private final synthetic val$bt:Landroid/graphics/Bitmap;

.field private final synthetic val$listView1:Landroid/widget/GridView;

.field private final synthetic val$listView2:Landroid/widget/GridView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/IconPickAct;Landroid/graphics/Bitmap;Landroid/widget/GridView;Landroid/widget/GridView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/IconPickAct;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct$2;->val$bt:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct$2;->val$listView1:Landroid/widget/GridView;

    iput-object p4, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct$2;->val$listView2:Landroid/widget/GridView;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 45
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/IconPickAct;

    new-instance v1, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/IconPickAct;

    const-string v3, "pic"

    const v4, -0xce4d19

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    #setter for: Lcom/lx/launcher8/setting/wp8/IconPickAct;->mIconAdapter:Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->access$0(Lcom/lx/launcher8/setting/wp8/IconPickAct;Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;)V

    .line 46
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/IconPickAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/IconPickAct;->mIconAdapter:Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->access$1(Lcom/lx/launcher8/setting/wp8/IconPickAct;)Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct$2;->val$bt:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->addIcon(Landroid/graphics/Bitmap;)V

    .line 47
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/IconPickAct;

    new-instance v2, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/IconPickAct;

    const-string v4, "background"

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/IconPickAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/IconPickAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->access$2(Lcom/lx/launcher8/setting/wp8/IconPickAct;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "#dddddd"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_0
    invoke-direct {v2, v3, v4, v0, v5}, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    #setter for: Lcom/lx/launcher8/setting/wp8/IconPickAct;->mPicAdapter:Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;
    invoke-static {v1, v2}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->access$3(Lcom/lx/launcher8/setting/wp8/IconPickAct;Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;)V

    .line 48
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct$2;->val$listView1:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/IconPickAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/IconPickAct;->mIconAdapter:Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->access$1(Lcom/lx/launcher8/setting/wp8/IconPickAct;)Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 49
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct$2;->val$listView2:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/IconPickAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/IconPickAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/IconPickAct;->mPicAdapter:Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/IconPickAct;->access$4(Lcom/lx/launcher8/setting/wp8/IconPickAct;)Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    return-void

    .line 47
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
