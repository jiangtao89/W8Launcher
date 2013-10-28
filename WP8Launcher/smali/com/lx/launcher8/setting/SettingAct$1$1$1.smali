.class Lcom/lx/launcher8/setting/SettingAct$1$1$1;
.super Ljava/lang/Object;
.source "SettingAct.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/SettingAct$1$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/lx/launcher8/setting/SettingAct$1$1;

.field private final synthetic val$savePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/SettingAct$1$1;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/SettingAct$1$1$1;->this$2:Lcom/lx/launcher8/setting/SettingAct$1$1;

    iput-object p2, p0, Lcom/lx/launcher8/setting/SettingAct$1$1$1;->val$savePath:Ljava/lang/String;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lx/launcher8/setting/SettingAct$1$1$1;->this$2:Lcom/lx/launcher8/setting/SettingAct$1$1;

    #getter for: Lcom/lx/launcher8/setting/SettingAct$1$1;->this$1:Lcom/lx/launcher8/setting/SettingAct$1;
    invoke-static {v0}, Lcom/lx/launcher8/setting/SettingAct$1$1;->access$0(Lcom/lx/launcher8/setting/SettingAct$1$1;)Lcom/lx/launcher8/setting/SettingAct$1;

    move-result-object v0

    #getter for: Lcom/lx/launcher8/setting/SettingAct$1;->this$0:Lcom/lx/launcher8/setting/SettingAct;
    invoke-static {v0}, Lcom/lx/launcher8/setting/SettingAct$1;->access$0(Lcom/lx/launcher8/setting/SettingAct$1;)Lcom/lx/launcher8/setting/SettingAct;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/SettingAct$1$1$1;->val$savePath:Ljava/lang/String;

    #calls: Lcom/lx/launcher8/setting/SettingAct;->saveTheme(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/SettingAct;->access$0(Lcom/lx/launcher8/setting/SettingAct;Ljava/lang/String;)V

    .line 240
    return-void
.end method
