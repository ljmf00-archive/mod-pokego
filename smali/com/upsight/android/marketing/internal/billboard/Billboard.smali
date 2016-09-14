.class public Lcom/upsight/android/marketing/internal/billboard/Billboard;
.super Lcom/upsight/android/marketing/UpsightBillboard;
.source "Billboard.java"


# instance fields
.field private mBillboardManager:Lcom/upsight/android/marketing/UpsightBillboardManager;

.field protected final mHandler:Lcom/upsight/android/marketing/UpsightBillboard$Handler;

.field protected final mScope:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/upsight/android/marketing/UpsightBillboard$Handler;)V
    .locals 0
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/upsight/android/marketing/UpsightBillboard$Handler;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/upsight/android/marketing/UpsightBillboard;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/billboard/Billboard;->mScope:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/upsight/android/marketing/internal/billboard/Billboard;->mHandler:Lcom/upsight/android/marketing/UpsightBillboard$Handler;

    .line 45
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/Billboard;->mBillboardManager:Lcom/upsight/android/marketing/UpsightBillboardManager;

    .line 75
    .local v0, "billboardManager":Lcom/upsight/android/marketing/UpsightBillboardManager;
    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0, p0}, Lcom/upsight/android/marketing/UpsightBillboardManager;->unregisterBillboard(Lcom/upsight/android/marketing/internal/billboard/Billboard;)Z

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/upsight/android/marketing/internal/billboard/Billboard;->mBillboardManager:Lcom/upsight/android/marketing/UpsightBillboardManager;

    .line 79
    :cond_0
    return-void
.end method

.method getHandler()Lcom/upsight/android/marketing/UpsightBillboard$Handler;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/Billboard;->mHandler:Lcom/upsight/android/marketing/UpsightBillboard$Handler;

    return-object v0
.end method

.method getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/Billboard;->mScope:Ljava/lang/String;

    return-object v0
.end method

.method public final setUp(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/marketing/UpsightBillboard;
    .locals 8
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v3, 0x0

    .line 52
    .local v3, "marketingApi":Lcom/upsight/android/marketing/UpsightMarketingApi;
    const-string v4, "com.upsight.extension.marketing"

    invoke-virtual {p1, v4}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/UpsightMarketingExtension;

    .line 53
    .local v1, "extension":Lcom/upsight/android/UpsightMarketingExtension;
    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v1}, Lcom/upsight/android/UpsightMarketingExtension;->getApi()Lcom/upsight/android/marketing/UpsightMarketingApi;

    move-result-object v3

    .line 59
    :goto_0
    if-eqz v3, :cond_1

    .line 60
    iput-object v3, p0, Lcom/upsight/android/marketing/internal/billboard/Billboard;->mBillboardManager:Lcom/upsight/android/marketing/UpsightBillboardManager;

    .line 61
    iget-object v4, p0, Lcom/upsight/android/marketing/internal/billboard/Billboard;->mBillboardManager:Lcom/upsight/android/marketing/UpsightBillboardManager;

    invoke-interface {v4, p0}, Lcom/upsight/android/marketing/UpsightBillboardManager;->registerBillboard(Lcom/upsight/android/marketing/internal/billboard/Billboard;)Z

    move-result v2

    .line 62
    .local v2, "isSuccessful":Z
    if-nez v2, :cond_1

    .line 63
    const-class v4, Lcom/upsight/android/marketing/UpsightBillboard;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "billboardClassName":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "An active "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with the same scope already exists. A billboard remains active until either a content view is attached, or "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#destroy() is called."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 56
    .end local v0    # "billboardClassName":Ljava/lang/String;
    .end local v2    # "isSuccessful":Z
    :cond_0
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v4

    const-string v5, "Upsight"

    const-string v6, "com.upsight.extension.marketing must be registered in your Android Manifest"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 69
    :cond_1
    return-object p0
.end method
