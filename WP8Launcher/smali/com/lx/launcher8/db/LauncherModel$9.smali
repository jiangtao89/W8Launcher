.class Lcom/lx/launcher8/db/LauncherModel$9;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/db/LauncherModel;->removeAppToDatabase(Lcom/anall/app/bean/AppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/db/LauncherModel;

.field private final synthetic val$app:Lcom/anall/app/bean/AppInfo;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/db/LauncherModel;Lcom/anall/app/bean/AppInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/db/LauncherModel$9;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    iput-object p2, p0, Lcom/lx/launcher8/db/LauncherModel$9;->val$app:Lcom/anall/app/bean/AppInfo;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/lx/launcher8/db/LauncherModel$9;->this$0:Lcom/lx/launcher8/db/LauncherModel;

    #getter for: Lcom/lx/launcher8/db/LauncherModel;->mDBApp:Lcom/lx/launcher8/db/DBApp;
    invoke-static {v0}, Lcom/lx/launcher8/db/LauncherModel;->access$13(Lcom/lx/launcher8/db/LauncherModel;)Lcom/lx/launcher8/db/DBApp;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/db/LauncherModel$9;->val$app:Lcom/anall/app/bean/AppInfo;

    iget-wide v1, v1, Lcom/anall/app/bean/AppInfo;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/lx/launcher8/db/DBApp;->delete(J)Z

    .line 283
    return-void
.end method
