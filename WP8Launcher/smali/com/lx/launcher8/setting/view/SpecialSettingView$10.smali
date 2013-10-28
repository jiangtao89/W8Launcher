.class Lcom/lx/launcher8/setting/view/SpecialSettingView$10;
.super Ljava/lang/Object;
.source "SpecialSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/view/SpecialSettingView;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/SpecialSettingView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$10;->this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/view/SpecialSettingView$10;)Lcom/lx/launcher8/setting/view/SpecialSettingView;
    .locals 1
    .parameter

    .prologue
    .line 349
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$10;->this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 354
    new-instance v2, Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$10;->this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lx/launcher8/setting/view/SpecialSettingView;->access$0(Lcom/lx/launcher8/setting/view/SpecialSettingView;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e0005

    invoke-direct {v2, v5, v6}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;-><init>(Landroid/content/Context;I)V

    .line 355
    .local v2, dst:Lcom/lx/launcher8/setting/view/DialogSaveTheme;
    new-instance v5, Lcom/lx/launcher8/setting/view/SpecialSettingView$10$1;

    invoke-direct {v5, p0, v2}, Lcom/lx/launcher8/setting/view/SpecialSettingView$10$1;-><init>(Lcom/lx/launcher8/setting/view/SpecialSettingView$10;Lcom/lx/launcher8/setting/view/DialogSaveTheme;)V

    invoke-virtual {v2, v5}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$10;->this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lx/launcher8/setting/view/SpecialSettingView;->access$0(Lcom/lx/launcher8/setting/view/SpecialSettingView;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a01c4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 371
    .local v4, title:Ljava/lang/String;
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$10;->this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lx/launcher8/setting/view/SpecialSettingView;->access$0(Lcom/lx/launcher8/setting/view/SpecialSettingView;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0133

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, about:Ljava/lang/String;
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$10;->this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lx/launcher8/setting/view/SpecialSettingView;->access$0(Lcom/lx/launcher8/setting/view/SpecialSettingView;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0077

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 373
    .local v3, ok:Ljava/lang/String;
    iget-object v5, p0, Lcom/lx/launcher8/setting/view/SpecialSettingView$10;->this$0:Lcom/lx/launcher8/setting/view/SpecialSettingView;

    #getter for: Lcom/lx/launcher8/setting/view/SpecialSettingView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lx/launcher8/setting/view/SpecialSettingView;->access$0(Lcom/lx/launcher8/setting/view/SpecialSettingView;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0078

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, cancel:Ljava/lang/String;
    invoke-virtual {v2, v4, v0, v3, v1}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->createWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lx/launcher8/setting/view/DialogSaveTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lx/launcher8/setting/view/DialogSaveTheme;->show()V

    .line 375
    return-void
.end method
