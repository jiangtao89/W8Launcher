.class Lcom/lx/launcher8/setting/FolderSettingAct$4;
.super Ljava/lang/Object;
.source "FolderSettingAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/FolderSettingAct;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/FolderSettingAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/FolderSettingAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/FolderSettingAct$4;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct$4;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/FolderSettingAct;->setResult(I)V

    .line 89
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct$4;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/FolderSettingAct;->finish()V

    .line 90
    return-void
.end method
