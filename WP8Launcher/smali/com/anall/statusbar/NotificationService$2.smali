.class Lcom/anall/statusbar/NotificationService$2;
.super Ljava/lang/Object;
.source "NotificationService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anall/statusbar/NotificationService;->showPopWindow(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anall/statusbar/NotificationService;


# direct methods
.method constructor <init>(Lcom/anall/statusbar/NotificationService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anall/statusbar/NotificationService$2;->this$0:Lcom/anall/statusbar/NotificationService;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 145
    iget-object v1, p0, Lcom/anall/statusbar/NotificationService$2;->this$0:Lcom/anall/statusbar/NotificationService;

    #calls: Lcom/anall/statusbar/NotificationService;->dissPopWindow()V
    invoke-static {v1}, Lcom/anall/statusbar/NotificationService;->access$0(Lcom/anall/statusbar/NotificationService;)V

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 147
    .local v0, pi:Landroid/app/PendingIntent;
    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    goto :goto_0
.end method
