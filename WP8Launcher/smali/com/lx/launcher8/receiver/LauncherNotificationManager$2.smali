.class Lcom/lx/launcher8/receiver/LauncherNotificationManager$2;
.super Landroid/telephony/PhoneStateListener;
.source "LauncherNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/receiver/LauncherNotificationManager;->registerCallListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastState:I

.field final synthetic this$0:Lcom/lx/launcher8/receiver/LauncherNotificationManager;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/receiver/LauncherNotificationManager;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager$2;->this$0:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    .line 149
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager$2;->lastState:I

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 10
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 154
    iget v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager$2;->lastState:I

    if-nez v0, :cond_0

    .line 157
    :cond_0
    iget v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager$2;->lastState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    .line 158
    const/4 v9, 0x0

    .line 160
    .local v9, missedCall:I
    :try_start_0
    iget-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager$2;->this$0:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    #getter for: Lcom/lx/launcher8/receiver/LauncherNotificationManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->access$2(Lcom/lx/launcher8/receiver/LauncherNotificationManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "type = \'3\' AND new = \'1\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 161
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 165
    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    iget-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager$2;->this$0:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    #getter for: Lcom/lx/launcher8/receiver/LauncherNotificationManager;->callListenerList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->access$3(Lcom/lx/launcher8/receiver/LauncherNotificationManager;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v8, v0, :cond_2

    .line 171
    .end local v8           #i:I
    .end local v9           #missedCall:I
    :cond_1
    iput p1, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager$2;->lastState:I

    .line 172
    return-void

    .line 162
    .restart local v9       #missedCall:I
    :catch_0
    move-exception v7

    .line 163
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 166
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v8       #i:I
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager$2;->this$0:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    #getter for: Lcom/lx/launcher8/receiver/LauncherNotificationManager;->callListenerList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->access$3(Lcom/lx/launcher8/receiver/LauncherNotificationManager;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager$2;->this$0:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    #getter for: Lcom/lx/launcher8/receiver/LauncherNotificationManager;->callListenerList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->access$3(Lcom/lx/launcher8/receiver/LauncherNotificationManager;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/receiver/LauncherNotificationManager$CallReceiveListener;

    invoke-interface {v0, v9, p2}, Lcom/lx/launcher8/receiver/LauncherNotificationManager$CallReceiveListener;->onCallReceive(ILjava/lang/String;)V

    .line 165
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method
