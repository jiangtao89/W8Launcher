.class public interface abstract Lcom/app/common/task/BaseTask$TaskListener;
.super Ljava/lang/Object;
.source "BaseTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/common/task/BaseTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TaskListener"
.end annotation


# virtual methods
.method public abstract onTaskEnd(IZLandroid/os/Message;)V
.end method

.method public abstract onTaskStart(IZ)V
.end method
