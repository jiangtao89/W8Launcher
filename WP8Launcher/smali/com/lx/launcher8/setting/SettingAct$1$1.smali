.class Lcom/lx/launcher8/setting/SettingAct$1$1;
.super Ljava/lang/Object;
.source "SettingAct.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/SettingAct$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/setting/SettingAct$1;

.field private final synthetic val$edit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/SettingAct$1;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/SettingAct$1$1;->this$1:Lcom/lx/launcher8/setting/SettingAct$1;

    iput-object p2, p0, Lcom/lx/launcher8/setting/SettingAct$1$1;->val$edit:Landroid/widget/EditText;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/SettingAct$1$1;)Lcom/lx/launcher8/setting/SettingAct$1;
    .locals 1
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/lx/launcher8/setting/SettingAct$1$1;->this$1:Lcom/lx/launcher8/setting/SettingAct$1;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 228
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingAct$1$1;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 253
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-static {v2}, Lcom/lx/launcher8/db/ThemeHelper;->getAbsThemePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, savePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .local v1, history:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 233
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingAct$1$1;->this$1:Lcom/lx/launcher8/setting/SettingAct$1;

    #getter for: Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;
    invoke-static {v4}, Lcom/lx/launcher8/setting/SettingAct$1;->access$0(Lcom/lx/launcher8/setting/SettingAct$1;)Lcom/lx/launcher8/setting/SettingAct;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 234
    .local v0, builder_01:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingAct$1$1;->this$1:Lcom/lx/launcher8/setting/SettingAct$1;

    #getter for: Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;
    invoke-static {v4}, Lcom/lx/launcher8/setting/SettingAct$1;->access$0(Lcom/lx/launcher8/setting/SettingAct$1;)Lcom/lx/launcher8/setting/SettingAct;

    move-result-object v4

    const v5, 0x7f0a00ab

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/setting/SettingAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 235
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingAct$1$1;->this$1:Lcom/lx/launcher8/setting/SettingAct$1;

    #getter for: Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;
    invoke-static {v4}, Lcom/lx/launcher8/setting/SettingAct$1;->access$0(Lcom/lx/launcher8/setting/SettingAct$1;)Lcom/lx/launcher8/setting/SettingAct;

    move-result-object v4

    const v5, 0x7f0a00ac

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/setting/SettingAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 236
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingAct$1$1;->this$1:Lcom/lx/launcher8/setting/SettingAct$1;

    #getter for: Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;
    invoke-static {v4}, Lcom/lx/launcher8/setting/SettingAct$1;->access$0(Lcom/lx/launcher8/setting/SettingAct$1;)Lcom/lx/launcher8/setting/SettingAct;

    move-result-object v4

    const v5, 0x7f0a00aa

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/setting/SettingAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/lx/launcher8/setting/SettingAct$1$1$1;

    invoke-direct {v5, p0, v3}, Lcom/lx/launcher8/setting/SettingAct$1$1$1;-><init>(Lcom/lx/launcher8/setting/SettingAct$1$1;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 242
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingAct$1$1;->this$1:Lcom/lx/launcher8/setting/SettingAct$1;

    #getter for: Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;
    invoke-static {v4}, Lcom/lx/launcher8/setting/SettingAct$1;->access$0(Lcom/lx/launcher8/setting/SettingAct$1;)Lcom/lx/launcher8/setting/SettingAct;

    move-result-object v4

    const v5, 0x7f0a0078

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/setting/SettingAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/lx/launcher8/setting/SettingAct$1$1$2;

    invoke-direct {v5, p0}, Lcom/lx/launcher8/setting/SettingAct$1$1$2;-><init>(Lcom/lx/launcher8/setting/SettingAct$1$1;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 248
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 252
    .end local v0           #builder_01:Landroid/app/AlertDialog$Builder;
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 250
    :cond_1
    iget-object v4, p0, Lcom/lx/launcher8/setting/SettingAct$1$1;->this$1:Lcom/lx/launcher8/setting/SettingAct$1;

    #getter for: Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;
    invoke-static {v4}, Lcom/lx/launcher8/setting/SettingAct$1;->access$0(Lcom/lx/launcher8/setting/SettingAct$1;)Lcom/lx/launcher8/setting/SettingAct;

    move-result-object v4

    #calls: Lcom/lx/launcher8/setting/SettingAct;->saveTheme(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lcom/lx/launcher8/setting/SettingAct;->access$0(Lcom/lx/launcher8/setting/SettingAct;Ljava/lang/String;)V

    goto :goto_1
.end method
