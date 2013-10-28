.class public final enum Lcom/lx/launcher8/util/Utils$SettingsStyle;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettingsStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lx/launcher8/util/Utils$SettingsStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BUTTON:Lcom/lx/launcher8/util/Utils$SettingsStyle;

.field public static final enum COLOR:Lcom/lx/launcher8/util/Utils$SettingsStyle;

.field private static final synthetic ENUM$VALUES:[Lcom/lx/launcher8/util/Utils$SettingsStyle;

.field public static final enum NONE:Lcom/lx/launcher8/util/Utils$SettingsStyle;

.field public static final enum TEXT:Lcom/lx/launcher8/util/Utils$SettingsStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 420
    new-instance v0, Lcom/lx/launcher8/util/Utils$SettingsStyle;

    const-string v1, "COLOR"

    invoke-direct {v0, v1, v2}, Lcom/lx/launcher8/util/Utils$SettingsStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lx/launcher8/util/Utils$SettingsStyle;->COLOR:Lcom/lx/launcher8/util/Utils$SettingsStyle;

    new-instance v0, Lcom/lx/launcher8/util/Utils$SettingsStyle;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v3}, Lcom/lx/launcher8/util/Utils$SettingsStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lx/launcher8/util/Utils$SettingsStyle;->TEXT:Lcom/lx/launcher8/util/Utils$SettingsStyle;

    new-instance v0, Lcom/lx/launcher8/util/Utils$SettingsStyle;

    const-string v1, "BUTTON"

    invoke-direct {v0, v1, v4}, Lcom/lx/launcher8/util/Utils$SettingsStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lx/launcher8/util/Utils$SettingsStyle;->BUTTON:Lcom/lx/launcher8/util/Utils$SettingsStyle;

    new-instance v0, Lcom/lx/launcher8/util/Utils$SettingsStyle;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/lx/launcher8/util/Utils$SettingsStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lx/launcher8/util/Utils$SettingsStyle;->NONE:Lcom/lx/launcher8/util/Utils$SettingsStyle;

    .line 419
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lx/launcher8/util/Utils$SettingsStyle;

    sget-object v1, Lcom/lx/launcher8/util/Utils$SettingsStyle;->COLOR:Lcom/lx/launcher8/util/Utils$SettingsStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lx/launcher8/util/Utils$SettingsStyle;->TEXT:Lcom/lx/launcher8/util/Utils$SettingsStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lx/launcher8/util/Utils$SettingsStyle;->BUTTON:Lcom/lx/launcher8/util/Utils$SettingsStyle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lx/launcher8/util/Utils$SettingsStyle;->NONE:Lcom/lx/launcher8/util/Utils$SettingsStyle;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lx/launcher8/util/Utils$SettingsStyle;->ENUM$VALUES:[Lcom/lx/launcher8/util/Utils$SettingsStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 419
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lx/launcher8/util/Utils$SettingsStyle;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/lx/launcher8/util/Utils$SettingsStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/util/Utils$SettingsStyle;

    return-object v0
.end method

.method public static values()[Lcom/lx/launcher8/util/Utils$SettingsStyle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lx/launcher8/util/Utils$SettingsStyle;->ENUM$VALUES:[Lcom/lx/launcher8/util/Utils$SettingsStyle;

    array-length v1, v0

    new-array v2, v1, [Lcom/lx/launcher8/util/Utils$SettingsStyle;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
