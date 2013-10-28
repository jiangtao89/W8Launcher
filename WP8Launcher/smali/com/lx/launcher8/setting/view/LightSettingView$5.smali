.class Lcom/lx/launcher8/setting/view/LightSettingView$5;
.super Ljava/lang/Object;
.source "LightSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/view/LightSettingView;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/view/LightSettingView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/LightSettingView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LightSettingView$5;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/view/LightSettingView$5;)Lcom/lx/launcher8/setting/view/LightSettingView;
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LightSettingView$5;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 279
    new-instance v2, Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LightSettingView$5;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$0(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e0005

    invoke-direct {v2, v5, v6}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;-><init>(Landroid/content/Context;I)V

    .line 280
    .local v2, dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;
    new-instance v5, Lcom/lx/launcher8/setting/view/LightSettingView$5$1;

    invoke-direct {v5, p0, v2}, Lcom/lx/launcher8/setting/view/LightSettingView$5$1;-><init>(Lcom/lx/launcher8/setting/view/LightSettingView$5;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LightSettingView$5;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$0(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a01c4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 296
    .local v4, title:Ljava/lang/String;
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LightSettingView$5;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$0(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0133

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, about:Ljava/lang/String;
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LightSettingView$5;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$0(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0077

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, ok:Ljava/lang/String;
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/LightSettingView$5;->this$0:Lcom/lx/launcher8/setting/view/LightSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/LightSettingView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lx/launcher8/setting/view/LightSettingView;->access$0(Lcom/lx/launcher8/setting/view/LightSettingView;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0078

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, cancel:Ljava/lang/String;
    invoke-virtual {v2, v4, v0, v3, v1}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->createWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->show()V

    .line 300
    return-void
.end method
