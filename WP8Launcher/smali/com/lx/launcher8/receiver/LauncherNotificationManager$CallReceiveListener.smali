.class public interface abstract Lcom/lx/launcher8/receiver/LauncherNotificationManager$CallReceiveListener;
.super Ljava/lang/Object;
.source "LauncherNotificationManager.java"

# interfaces
.implements Lcom/lx/launcher8/receiver/LauncherNotificationManager$ReceiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/receiver/LauncherNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallReceiveListener"
.end annotation


# virtual methods
.method public abstract onCallIncoming(Ljava/lang/String;)V
.end method

.method public abstract onCallReceive(ILjava/lang/String;)V
.end method
