.class public interface abstract Lcom/lx/launcher8/db/LauncherModel$Callbacks;
.super Ljava/lang/Object;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/db/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract bindAllApplications(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anall/app/bean/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindAppsAdded(Ljava/util/ArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anall/app/bean/AppInfo;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract bindAppsRemoved(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anall/app/bean/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindAppsUpdated(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anall/app/bean/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindCell(Ljava/util/ArrayList;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/bean/ItemCell;",
            ">;II)V"
        }
    .end annotation
.end method

.method public abstract finishBindingApps()V
.end method

.method public abstract finishBindingCell()V
.end method

.method public abstract getCurrentWorkspaceScreen()I
.end method

.method public abstract isAllAppsVisible()Z
.end method

.method public abstract setLoadOnResume()Z
.end method

.method public abstract startBinding()V
.end method
