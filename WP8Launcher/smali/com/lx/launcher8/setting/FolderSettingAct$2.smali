.class Lcom/lx/launcher8/setting/FolderSettingAct$2;
.super Ljava/lang/Object;
.source "FolderSettingAct.java"

# interfaces
.implements Lcom/lx/launcher8/view/SeekButton$OnTouchOverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/FolderSettingAct;
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
    iput-object p1, p0, Lcom/lx/launcher8/setting/FolderSettingAct$2;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchOver(Lcom/lx/launcher8/view/SeekButton;Z)V
    .locals 1
    .parameter "v"
    .parameter "enable"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderSettingAct$2;->this$0:Lcom/lx/launcher8/setting/FolderSettingAct;

    invoke-virtual {v0, p1, p2}, Lcom/lx/launcher8/setting/FolderSettingAct;->onSeekChange(Lcom/lx/launcher8/view/SeekButton;Z)V

    .line 512
    return-void
.end method
