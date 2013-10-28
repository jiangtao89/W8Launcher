.class public Lcom/lx/launcher8/receiver/LauncherNotificationManager;
.super Ljava/lang/Object;
.source "LauncherNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/receiver/LauncherNotificationManager$CallReceiveListener;,
        Lcom/lx/launcher8/receiver/LauncherNotificationManager$MessageReceiveListener;,
        Lcom/lx/launcher8/receiver/LauncherNotificationManager$ReceiveListener;
    }
.end annotation


# static fields
.field private static mLauncherNotificationManager:Lcom/lx/launcher8/receiver/LauncherNotificationManager;


# instance fields
.field private callListenerList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lx/launcher8/receiver/LauncherNotificationManager$CallReceiveListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private msgListenerList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lx/launcher8/receiver/LauncherNotificationManager$MessageReceiveListener;",
            ">;"
        }
    .end annotation
.end field

.field private tm:Landroid/telephony/TelephonyManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->mContext:Landroid/content/Context;

    .line 22
    iput-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->msgListenerList:Ljava/util/LinkedList;

    .line 24
    iput-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->callListenerList:Ljava/util/LinkedList;

    .line 93
    iput-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 145
    iput-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->tm:Landroid/telephony/TelephonyManager;

    .line 35
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->mContext:Landroid/content/Context;

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->msgListenerList:Ljava/util/LinkedList;

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->callListenerList:Ljava/util/LinkedList;

    .line 40
    invoke-direct {p0}, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->registerSMSContentObserver()V

    .line 42
    invoke-direct {p0}, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->registerCallListener()V

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/receiver/LauncherNotificationManager;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->msgListenerList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/receiver/LauncherNotificationManager;Lcom/lx/launcher8/receiver/LauncherNotificationManager$MessageReceiveListener;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->checkUnReadSMS(Lcom/lx/launcher8/receiver/LauncherNotificationManager$MessageReceiveListener;)V

    return-void
.end method

.method static synthetic access$2(Lcom/lx/launcher8/receiver/LauncherNotificationManager;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/receiver/LauncherNotificationManager;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->callListenerList:Ljava/util/LinkedList;

    return-object v0
.end method

.method private checkUnReadSMS(Lcom/lx/launcher8/receiver/LauncherNotificationManager$MessageReceiveListener;)V
    .locals 14
    .parameter "mMessageReceiveListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 117
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 118
    .local v1, uriSMS:Landroid/net/Uri;
    iget-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "body"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "date"

    aput-object v5, v2, v4

    const-string v3, "read = 0"

    const/4 v4, 0x0

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 120
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 121
    .local v13, unReadCount:I
    const/4 v12, 0x0

    .line 122
    .local v12, smsMsg:Ljava/lang/String;
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 123
    .local v11, smsDate:Ljava/lang/Long;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "body"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 125
    const-string v0, "date"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 127
    :cond_0
    const-string v0, "content://mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 128
    .local v3, uriMMS:Landroid/net/Uri;
    iget-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "date"

    aput-object v5, v4, v0

    const-string v5, "read = 0"

    const/4 v6, 0x0

    const-string v7, "date desc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 129
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v13, v0

    .line 130
    const/4 v10, 0x0

    .line 131
    .local v10, mmsMsg:Ljava/lang/String;
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 132
    .local v9, mmsDate:Ljava/lang/Long;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    const-string v0, "body"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 134
    const-string v0, "date"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 136
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 137
    invoke-interface {p1, v13, v10}, Lcom/lx/launcher8/receiver/LauncherNotificationManager$MessageReceiveListener;->onMessageReceive(ILjava/lang/String;)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_2
    invoke-interface {p1, v13, v12}, Lcom/lx/launcher8/receiver/LauncherNotificationManager$MessageReceiveListener;->onMessageReceive(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/lx/launcher8/receiver/LauncherNotificationManager;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->mLauncherNotificationManager:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    invoke-direct {v0}, Lcom/lx/launcher8/receiver/LauncherNotificationManager;-><init>()V

    sput-object v0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->mLauncherNotificationManager:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    .line 31
    :cond_0
    sget-object v0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->mLauncherNotificationManager:Lcom/lx/launcher8/receiver/LauncherNotificationManager;

    return-object v0
.end method

.method private registerCallListener()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->tm:Landroid/telephony/TelephonyManager;

    .line 149
    iget-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->tm:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/lx/launcher8/receiver/LauncherNotificationManager$2;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/receiver/LauncherNotificationManager$2;-><init>(Lcom/lx/launcher8/receiver/LauncherNotificationManager;)V

    .line 172
    const/16 v2, 0x20

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 173
    return-void
.end method

.method private registerSMSContentObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 96
    new-instance v0, Lcom/lx/launcher8/receiver/LauncherNotificationManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lx/launcher8/receiver/LauncherNotificationManager$1;-><init>(Lcom/lx/launcher8/receiver/LauncherNotificationManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 111
    iget-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 112
    iget-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 113
    return-void
.end method


# virtual methods
.method public clearMissedCall()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->mContext:Landroid/content/Context;

    const-string v1, "missedCall"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/app/common/utils/UPreference;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 90
    return-void
.end method

.method public getMissedCall()I
    .locals 8

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "type = \'3\' AND new = \'1\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 62
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 66
    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    return v0

    .line 63
    :catch_0
    move-exception v7

    .line 64
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUnReadMsg()I
    .locals 8

    .prologue
    .line 71
    :try_start_0
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 72
    .local v1, uriSMS:Landroid/net/Uri;
    iget-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "read = 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 76
    .local v6, c1:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 77
    .local v7, count:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v1           #uriSMS:Landroid/net/Uri;
    .end local v6           #c1:Landroid/database/Cursor;
    .end local v7           #count:I
    :goto_0
    return v7

    .line 79
    :catch_0
    move-exception v0

    .line 82
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public removeListener(Lcom/lx/launcher8/receiver/LauncherNotificationManager$ReceiveListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 51
    instance-of v0, p1, Lcom/lx/launcher8/receiver/LauncherNotificationManager$CallReceiveListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->callListenerList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    instance-of v0, p1, Lcom/lx/launcher8/receiver/LauncherNotificationManager$MessageReceiveListener;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->msgListenerList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 57
    :cond_1
    return-void
.end method

.method public setCallReceiveListener(Lcom/lx/launcher8/receiver/LauncherNotificationManager$CallReceiveListener;)V
    .locals 1
    .parameter "mCallReceiveListener"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->callListenerList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 182
    return-void
.end method

.method public setMessageReceiveListener(Lcom/lx/launcher8/receiver/LauncherNotificationManager$MessageReceiveListener;)V
    .locals 1
    .parameter "mMessageReceiveListener"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/lx/launcher8/receiver/LauncherNotificationManager;->msgListenerList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method
