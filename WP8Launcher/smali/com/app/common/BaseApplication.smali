.class public Lcom/app/common/BaseApplication;
.super Landroid/app/Application;
.source "BaseApplication.java"


# static fields
.field private static instance:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/app/common/BaseApplication;->instance:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 26
    sput-object p0, Lcom/app/common/BaseApplication;->instance:Landroid/content/Context;

    .line 27
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/app/common/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/app/common/gy/Phone;->setImei(Ljava/lang/String;)V

    .line 28
    invoke-static {p0}, Lcom/app/common/config/BaseGlobal;->init(Landroid/content/Context;)V

    .line 29
    invoke-static {p0}, Lcom/app/common/utils/ULog;->init(Landroid/content/Context;)V

    .line 30
    return-void
.end method
