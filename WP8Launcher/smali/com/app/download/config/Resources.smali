.class public Lcom/app/download/config/Resources;
.super Ljava/lang/Object;
.source "Resources.java"


# static fields
.field public static down_category_finish:Ljava/lang/String;

.field public static down_category_ing:Ljava/lang/String;

.field public static down_group_closed:Ljava/lang/String;

.field public static down_group_expand:Ljava/lang/String;

.field public static down_progress:Ljava/lang/String;

.field public static down_state_error:Ljava/lang/String;

.field public static down_state_finish:Ljava/lang/String;

.field public static down_state_ing:Ljava/lang/String;

.field public static down_state_stop:Ljava/lang/String;

.field public static list_button_bg:Ljava/lang/String;

.field public static list_group_bg:Ljava/lang/String;

.field public static notification_icon:Ljava/lang/String;

.field public static notification_layout:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "download_icon"

    sput-object v0, Lcom/app/download/config/Resources;->notification_icon:Ljava/lang/String;

    .line 13
    const-string v0, "down_notify"

    sput-object v0, Lcom/app/download/config/Resources;->notification_layout:Ljava/lang/String;

    .line 15
    const-string v0, "list_group_bg"

    sput-object v0, Lcom/app/download/config/Resources;->list_group_bg:Ljava/lang/String;

    .line 17
    const-string v0, "down_group_ing"

    sput-object v0, Lcom/app/download/config/Resources;->down_category_ing:Ljava/lang/String;

    .line 19
    const-string v0, "down_group_finish"

    sput-object v0, Lcom/app/download/config/Resources;->down_category_finish:Ljava/lang/String;

    .line 21
    const-string v0, "down_group_expand"

    sput-object v0, Lcom/app/download/config/Resources;->down_group_expand:Ljava/lang/String;

    .line 23
    const-string v0, "down_group_close"

    sput-object v0, Lcom/app/download/config/Resources;->down_group_closed:Ljava/lang/String;

    .line 25
    const-string v0, "down_state_ing"

    sput-object v0, Lcom/app/download/config/Resources;->down_state_ing:Ljava/lang/String;

    .line 27
    const-string v0, "down_state_error"

    sput-object v0, Lcom/app/download/config/Resources;->down_state_error:Ljava/lang/String;

    .line 29
    const-string v0, "down_state_stop"

    sput-object v0, Lcom/app/download/config/Resources;->down_state_stop:Ljava/lang/String;

    .line 31
    const-string v0, "down_state_finish"

    sput-object v0, Lcom/app/download/config/Resources;->down_state_finish:Ljava/lang/String;

    .line 33
    const-string v0, "down_progess"

    sput-object v0, Lcom/app/download/config/Resources;->down_progress:Ljava/lang/String;

    .line 35
    const-string v0, "bg_list_button"

    sput-object v0, Lcom/app/download/config/Resources;->list_button_bg:Ljava/lang/String;

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
