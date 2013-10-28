.class Lcom/lx/launcher8/setting/SettingAct$3;
.super Ljava/lang/Thread;
.source "SettingAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/SettingAct;->saveTheme(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/SettingAct;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/SettingAct;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/SettingAct$3;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    iput-object p2, p0, Lcom/lx/launcher8/setting/SettingAct$3;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/lx/launcher8/setting/SettingAct$3;->val$dialog:Landroid/app/ProgressDialog;

    .line 331
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 333
    new-instance v0, Lcom/lx/launcher8/db/ThemeHelper;

    invoke-direct {v0}, Lcom/lx/launcher8/db/ThemeHelper;-><init>()V

    .line 334
    .local v0, helper:Lcom/lx/launcher8/db/ThemeHelper;
    iget-object v2, p0, Lcom/lx/launcher8/setting/SettingAct$3;->this$0:Lcom/lx/launcher8/setting/SettingAct;

    iget-object v3, p0, Lcom/lx/launcher8/setting/SettingAct$3;->val$name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/lx/launcher8/db/ThemeHelper;->saveTheme(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v1

    .line 335
    .local v1, result:I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save theme result "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/app/common/utils/ULog;->w(Ljava/lang/String;)V

    .line 336
    iget-object v2, p0, Lcom/lx/launcher8/setting/SettingAct$3;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 337
    return-void
.end method
