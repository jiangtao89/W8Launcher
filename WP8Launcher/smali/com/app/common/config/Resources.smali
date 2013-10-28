.class public Lcom/app/common/config/Resources;
.super Ljava/lang/Object;
.source "Resources.java"


# static fields
.field public static background:Ljava/lang/String;

.field public static custom_dialog_bottom_bg:Ljava/lang/String;

.field public static custom_dialog_button:Ljava/lang/String;

.field public static custom_dialog_icon:Ljava/lang/String;

.field public static custom_dialog_top_bg:Ljava/lang/String;

.field public static doc:Ljava/lang/String;

.field public static list_item_default:Ljava/lang/String;

.field public static list_item_selecte:Ljava/lang/String;

.field public static titilebar_right:Ljava/lang/String;

.field public static titlebar_bg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "background"

    sput-object v0, Lcom/app/common/config/Resources;->background:Ljava/lang/String;

    .line 14
    const-string v0, "dialog_top"

    sput-object v0, Lcom/app/common/config/Resources;->custom_dialog_top_bg:Ljava/lang/String;

    .line 16
    const-string v0, "dialog_icon"

    sput-object v0, Lcom/app/common/config/Resources;->custom_dialog_icon:Ljava/lang/String;

    .line 18
    const-string v0, "dialog_bottom"

    sput-object v0, Lcom/app/common/config/Resources;->custom_dialog_bottom_bg:Ljava/lang/String;

    .line 20
    const-string v0, "bg_button_h"

    sput-object v0, Lcom/app/common/config/Resources;->custom_dialog_button:Ljava/lang/String;

    .line 23
    const-string v0, "bg_item_selecte"

    sput-object v0, Lcom/app/common/config/Resources;->list_item_selecte:Ljava/lang/String;

    .line 25
    const-string v0, "bg_item_default"

    sput-object v0, Lcom/app/common/config/Resources;->list_item_default:Ljava/lang/String;

    .line 27
    const-string v0, " doc"

    sput-object v0, Lcom/app/common/config/Resources;->doc:Ljava/lang/String;

    .line 29
    const-string v0, "bg_titlebar"

    sput-object v0, Lcom/app/common/config/Resources;->titlebar_bg:Ljava/lang/String;

    .line 31
    const-string v0, "title_back"

    sput-object v0, Lcom/app/common/config/Resources;->titilebar_right:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
