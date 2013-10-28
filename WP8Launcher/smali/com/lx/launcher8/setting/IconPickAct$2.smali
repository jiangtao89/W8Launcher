.class Lcom/lx/launcher8/setting/IconPickAct$2;
.super Ljava/lang/Object;
.source "IconPickAct.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/IconPickAct;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/IconPickAct;

.field private final synthetic val$bt:Landroid/graphics/Bitmap;

.field private final synthetic val$listView1:Landroid/widget/GridView;

.field private final synthetic val$listView2:Landroid/widget/GridView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/IconPickAct;Landroid/graphics/Bitmap;Landroid/widget/GridView;Landroid/widget/GridView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/IconPickAct$2;->this$0:Lcom/lx/launcher8/setting/IconPickAct;

    iput-object p2, p0, Lcom/lx/launcher8/setting/IconPickAct$2;->val$bt:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/lx/launcher8/setting/IconPickAct$2;->val$listView1:Landroid/widget/GridView;

    iput-object p4, p0, Lcom/lx/launcher8/setting/IconPickAct$2;->val$listView2:Landroid/widget/GridView;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 40
    iget-object v0, p0, Lcom/lx/launcher8/setting/IconPickAct$2;->this$0:Lcom/lx/launcher8/setting/IconPickAct;

    new-instance v1, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;

    iget-object v2, p0, Lcom/lx/launcher8/setting/IconPickAct$2;->this$0:Lcom/lx/launcher8/setting/IconPickAct;

    const-string v3, "pic"

    const v4, -0xce4d19

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    #setter for: Lcom/lx/launcher8/setting/IconPickAct;->mIconAdapter:Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/IconPickAct;->access$0(Lcom/lx/launcher8/setting/IconPickAct;Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;)V

    .line 41
    iget-object v0, p0, Lcom/lx/launcher8/setting/IconPickAct$2;->this$0:Lcom/lx/launcher8/setting/IconPickAct;

    #getter for: Lcom/lx/launcher8/setting/IconPickAct;->mIconAdapter:Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;
    invoke-static {v0}, Lcom/lx/launcher8/setting/IconPickAct;->access$1(Lcom/lx/launcher8/setting/IconPickAct;)Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/IconPickAct$2;->val$bt:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;->addIcon(Landroid/graphics/Bitmap;)V

    .line 42
    iget-object v0, p0, Lcom/lx/launcher8/setting/IconPickAct$2;->this$0:Lcom/lx/launcher8/setting/IconPickAct;

    new-instance v1, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;

    iget-object v2, p0, Lcom/lx/launcher8/setting/IconPickAct$2;->this$0:Lcom/lx/launcher8/setting/IconPickAct;

    const-string v3, "background"

    const/4 v4, -0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    #setter for: Lcom/lx/launcher8/setting/IconPickAct;->mPicAdapter:Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/IconPickAct;->access$2(Lcom/lx/launcher8/setting/IconPickAct;Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;)V

    .line 43
    iget-object v0, p0, Lcom/lx/launcher8/setting/IconPickAct$2;->val$listView1:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/IconPickAct$2;->this$0:Lcom/lx/launcher8/setting/IconPickAct;

    #getter for: Lcom/lx/launcher8/setting/IconPickAct;->mIconAdapter:Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;
    invoke-static {v1}, Lcom/lx/launcher8/setting/IconPickAct;->access$1(Lcom/lx/launcher8/setting/IconPickAct;)Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    iget-object v0, p0, Lcom/lx/launcher8/setting/IconPickAct$2;->val$listView2:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/IconPickAct$2;->this$0:Lcom/lx/launcher8/setting/IconPickAct;

    #getter for: Lcom/lx/launcher8/setting/IconPickAct;->mPicAdapter:Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;
    invoke-static {v1}, Lcom/lx/launcher8/setting/IconPickAct;->access$3(Lcom/lx/launcher8/setting/IconPickAct;)Lcom/lx/launcher8/setting/adapter/AssetPicAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 45
    return-void
.end method
