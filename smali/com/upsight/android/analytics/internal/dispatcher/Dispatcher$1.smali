.class Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;
.super Ljava/lang/Object;
.source "Dispatcher.java"

# interfaces
.implements Lcom/upsight/android/persistence/UpsightDataStoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->fetchCreatedRecords()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/upsight/android/persistence/UpsightDataStoreListener",
        "<",
        "Ljava/util/Set",
        "<",
        "Lcom/upsight/android/analytics/internal/DataStoreRecord;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/upsight/android/UpsightException;)V
    .locals 5
    .param p1, "exception"    # Lcom/upsight/android/UpsightException;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mLogger:Lcom/upsight/android/logger/UpsightLogger;
    invoke-static {v0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->access$100(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    const-string v1, "Dispatcher"

    const-string v2, "Could not fetch records from store."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 134
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;->onSuccess(Ljava/util/Set;)V

    return-void
.end method

.method public onSuccess(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/internal/DataStoreRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/DataStoreRecord;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/DataStoreRecord;

    .line 138
    .local v0, "record":Lcom/upsight/android/analytics/internal/DataStoreRecord;
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    # invokes: Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->routeRecords(Lcom/upsight/android/analytics/internal/DataStoreRecord;)V
    invoke-static {v2, v0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->access$000(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;Lcom/upsight/android/analytics/internal/DataStoreRecord;)V

    goto :goto_0

    .line 140
    .end local v0    # "record":Lcom/upsight/android/analytics/internal/DataStoreRecord;
    :cond_0
    return-void
.end method
