.class Lcom/lx/launcher8/DispalyFolderDialog$2;
.super Ljava/lang/Object;
.source "DispalyFolderDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/DispalyFolderDialog;-><init>(Lcom/lx/launcher8/AnallLauncher;Lcom/lx/launcher8/bean/FolderCell;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/DispalyFolderDialog;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/DispalyFolderDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/DispalyFolderDialog$2;->this$0:Lcom/lx/launcher8/DispalyFolderDialog;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lx/launcher8/DispalyFolderDialog$2;->this$0:Lcom/lx/launcher8/DispalyFolderDialog;

    invoke-virtual {v0}, Lcom/lx/launcher8/DispalyFolderDialog;->dismiss()V

    .line 67
    const/4 v0, 0x0

    return v0
.end method
