.class Lcom/lx/launcher8/AnallLauncher$4$1;
.super Ljava/lang/Object;
.source "AnallLauncher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/AnallLauncher$4;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/AnallLauncher$4;

.field private final synthetic val$info:Lcom/anall/app/bean/AppInfo;

.field private final synthetic val$pop:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/AnallLauncher$4;Lcom/anall/app/bean/AppInfo;Landroid/widget/PopupWindow;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/AnallLauncher$4$1;->this$1:Lcom/lx/launcher8/AnallLauncher$4;

    iput-object p2, p0, Lcom/lx/launcher8/AnallLauncher$4$1;->val$info:Lcom/anall/app/bean/AppInfo;

    iput-object p3, p0, Lcom/lx/launcher8/AnallLauncher$4$1;->val$pop:Landroid/widget/PopupWindow;

    .line 1079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 1082
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1097
    :goto_0
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$4$1;->val$pop:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1098
    return-void

    .line 1084
    :pswitch_0
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$4$1;->this$1:Lcom/lx/launcher8/AnallLauncher$4;

    #getter for: Lcom/lx/launcher8/AnallLauncher$4;->this$0:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v1}, Lcom/lx/launcher8/AnallLauncher$4;->access$0(Lcom/lx/launcher8/AnallLauncher$4;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher$4$1;->val$info:Lcom/anall/app/bean/AppInfo;

    #calls: Lcom/lx/launcher8/AnallLauncher;->completeAddApp(Lcom/anall/app/bean/AppInfo;)V
    invoke-static {v1, v2}, Lcom/lx/launcher8/AnallLauncher;->access$4(Lcom/lx/launcher8/AnallLauncher;Lcom/anall/app/bean/AppInfo;)V

    goto :goto_0

    .line 1087
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    const-string v2, "package"

    iget-object v3, p0, Lcom/lx/launcher8/AnallLauncher$4$1;->val$info:Lcom/anall/app/bean/AppInfo;

    iget-object v3, v3, Lcom/anall/app/bean/AppInfo;->intent:Landroid/content/Intent;

    .line 1088
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1087
    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1089
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$4$1;->this$1:Lcom/lx/launcher8/AnallLauncher$4;

    #getter for: Lcom/lx/launcher8/AnallLauncher$4;->this$0:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v1}, Lcom/lx/launcher8/AnallLauncher$4;->access$0(Lcom/lx/launcher8/AnallLauncher$4;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/AnallLauncher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1092
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$4$1;->val$info:Lcom/anall/app/bean/AppInfo;

    const/4 v2, 0x1

    iput v2, v1, Lcom/anall/app/bean/AppInfo;->isVisible:I

    .line 1093
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$4$1;->this$1:Lcom/lx/launcher8/AnallLauncher$4;

    #getter for: Lcom/lx/launcher8/AnallLauncher$4;->this$0:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v1}, Lcom/lx/launcher8/AnallLauncher$4;->access$0(Lcom/lx/launcher8/AnallLauncher$4;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v1

    #getter for: Lcom/lx/launcher8/AnallLauncher;->mModel:Lcom/lx/launcher8/db/LauncherModel;
    invoke-static {v1}, Lcom/lx/launcher8/AnallLauncher;->access$2(Lcom/lx/launcher8/AnallLauncher;)Lcom/lx/launcher8/db/LauncherModel;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher$4$1;->val$info:Lcom/anall/app/bean/AppInfo;

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/db/LauncherModel;->updateAppToDatabase(Lcom/anall/app/bean/AppInfo;)V

    .line 1094
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$4$1;->this$1:Lcom/lx/launcher8/AnallLauncher$4;

    #getter for: Lcom/lx/launcher8/AnallLauncher$4;->this$0:Lcom/lx/launcher8/AnallLauncher;
    invoke-static {v1}, Lcom/lx/launcher8/AnallLauncher$4;->access$0(Lcom/lx/launcher8/AnallLauncher$4;)Lcom/lx/launcher8/AnallLauncher;

    move-result-object v1

    iget-object v1, v1, Lcom/lx/launcher8/AnallLauncher;->mAppGridView:Lcom/lx/launcher8/view/FilterGridView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/FilterGridView;->setFilterText(Ljava/lang/String;)V

    goto :goto_0

    .line 1082
    nop

    :pswitch_data_0
    .packed-switch 0x7f0901fd
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
