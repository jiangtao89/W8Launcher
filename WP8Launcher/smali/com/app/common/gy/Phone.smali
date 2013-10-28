.class public Lcom/app/common/gy/Phone;
.super Ljava/lang/Object;
.source "Phone.java"


# static fields
.field private static gImei:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/app/common/gy/Phone;->gImei:Ljava/lang/String;

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getVsRelease()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getVsSDK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    return-object v0
.end method

.method public static setImei(Ljava/lang/String;)V
    .locals 0
    .parameter "imei"

    .prologue
    .line 46
    sput-object p0, Lcom/app/common/gy/Phone;->gImei:Ljava/lang/String;

    .line 47
    return-void
.end method
