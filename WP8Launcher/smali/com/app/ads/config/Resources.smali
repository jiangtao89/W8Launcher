.class public Lcom/app/ads/config/Resources;
.super Ljava/lang/Object;
.source "Resources.java"


# static fields
.field public static ad_close_icon:Ljava/lang/String;

.field public static ad_down_bg:Ljava/lang/String;

.field public static ad_icon_bg:Ljava/lang/String;

.field public static ad_menu_first:Ljava/lang/String;

.field public static ad_menu_second:Ljava/lang/String;

.field public static ad_menu_third:Ljava/lang/String;

.field public static ad_pic_def:Ljava/lang/String;

.field public static ad_pic_next:Ljava/lang/String;

.field public static ad_pic_pre:Ljava/lang/String;

.field public static ad_ratingbars:Ljava/lang/String;

.field public static ad_ratingbaru:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "rating_a_select"

    sput-object v0, Lcom/app/ads/config/Resources;->ad_ratingbars:Ljava/lang/String;

    .line 13
    const-string v0, "rating_a_unselect"

    sput-object v0, Lcom/app/ads/config/Resources;->ad_ratingbaru:Ljava/lang/String;

    .line 15
    const-string v0, "bg_button_k"

    sput-object v0, Lcom/app/ads/config/Resources;->ad_menu_first:Ljava/lang/String;

    .line 17
    const-string v0, "bg_button_j"

    sput-object v0, Lcom/app/ads/config/Resources;->ad_menu_second:Ljava/lang/String;

    .line 19
    const-string v0, "bg_button_l"

    sput-object v0, Lcom/app/ads/config/Resources;->ad_menu_third:Ljava/lang/String;

    .line 21
    const-string v0, "btn_close"

    sput-object v0, Lcom/app/ads/config/Resources;->ad_close_icon:Ljava/lang/String;

    .line 23
    const-string v0, "bg_img_ad"

    sput-object v0, Lcom/app/ads/config/Resources;->ad_icon_bg:Ljava/lang/String;

    .line 25
    const-string v0, "bg_button_down"

    sput-object v0, Lcom/app/ads/config/Resources;->ad_down_bg:Ljava/lang/String;

    .line 27
    const-string v0, "pic_default"

    sput-object v0, Lcom/app/ads/config/Resources;->ad_pic_def:Ljava/lang/String;

    .line 29
    const-string v0, "a_on_list"

    sput-object v0, Lcom/app/ads/config/Resources;->ad_pic_pre:Ljava/lang/String;

    .line 31
    const-string v0, "a_next_list"

    sput-object v0, Lcom/app/ads/config/Resources;->ad_pic_next:Ljava/lang/String;

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
