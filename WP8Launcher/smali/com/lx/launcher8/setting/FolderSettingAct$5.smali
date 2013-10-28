.class Lcom/lx/launcher8/setting/FolderSettingAct$5;
.super Ljava/lang/Object;
.source "FolderSettingAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/FolderSettingAct;->initView()V
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
    iput-object p1, p0, Lcom/lx/launcher8/setting/FolderSettingAct$5;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 189
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderSettingAct$5;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    .line 190
    const-class v2, Lcom/lx/launcher8/setting/TextStylePickAct;

    .line 189
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "text_color"

    .line 192
    iget-object v2, p0, Lcom/lx/launcher8/setting/FolderSettingAct$5;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    #getter for: Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/FolderSettingAct;->access$3(Lcom/lx/launcher8/setting/FolderSettingAct;)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v2

    iget v2, v2, Lcom/lx/launcher8/bean/FolderCell;->textColor:I

    .line 191
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    const-string v1, "text_gravity"

    .line 194
    iget-object v2, p0, Lcom/lx/launcher8/setting/FolderSettingAct$5;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    #getter for: Lcom/lx/launcher8/setting/FolderSettingAct;->mCellInfo:Lcom/lx/launcher8/bean/FolderCell;
    invoke-static {v2}, Lcom/lx/launcher8/setting/FolderSettingAct;->access$3(Lcom/lx/launcher8/setting/FolderSettingAct;)Lcom/lx/launcher8/bean/FolderCell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/bean/FolderCell;->getTextGravity()I

    move-result v2

    .line 193
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    iget-object v1, p0, Lcom/lx/launcher8/setting/FolderSettingAct$5;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    const/16 v2, 0x13

    invoke-virtual {v1, v0, v2}, Lcom/lx/launcher8/setting/FolderSettingAct;->startActivityForResult(Landroid/content/Intent;I)V

    .line 196
    return-void
.end method
