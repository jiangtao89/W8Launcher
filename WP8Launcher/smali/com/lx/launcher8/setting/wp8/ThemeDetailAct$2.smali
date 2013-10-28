.class Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2;
.super Ljava/lang/Thread;
.source "ThemeDetailAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->saveAndRestore(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

.field private final synthetic val$bit:Landroid/graphics/Bitmap;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;Landroid/graphics/Bitmap;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2;->val$bit:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2;->val$dialog:Landroid/app/ProgressDialog;

    .line 173
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2;)Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;
    .locals 1
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 176
    invoke-static {}, Lcom/lx/launcher8/util/Utils;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lx/launcher8/db/ThemeHelper;->getAbsThemePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, savePath:Ljava/lang/String;
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mThemeHelper:Lcom/lx/launcher8/db/ThemeHelper;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->access$0(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;)Lcom/lx/launcher8/db/ThemeHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2;->val$bit:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0, v3}, Lcom/lx/launcher8/db/ThemeHelper;->saveTheme(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)I

    .line 178
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;

    iget-object v1, v1, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct;->mRootView:Landroid/view/View;

    new-instance v2, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2$1;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {v2, p0, v3}, Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2$1;-><init>(Lcom/lx/launcher8/setting/wp8/ThemeDetailAct$2;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 184
    return-void
.end method
