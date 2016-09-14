.class public final Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity_MembersInjector;
.super Ljava/lang/Object;
.source "BillboardManagementActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mContentStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentStore;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpsightProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity_MembersInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity_MembersInjector;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentStore;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "mUpsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    .local p2, "mContentStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/internal/content/MarketingContentStore;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-boolean v0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity_MembersInjector;->mUpsightProvider:Ljavax/inject/Provider;

    .line 24
    sget-boolean v0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 25
    :cond_1
    iput-object p2, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity_MembersInjector;->mContentStoreProvider:Ljavax/inject/Provider;

    .line 26
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentStore;",
            ">;)",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "mUpsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    .local p1, "mContentStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/internal/content/MarketingContentStore;>;"
    new-instance v0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity_MembersInjector;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMContentStore(Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;Ljavax/inject/Provider;)V
    .locals 1
    .param p0, "instance"    # Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/marketing/internal/content/MarketingContentStore;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "mContentStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/marketing/internal/content/MarketingContentStore;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mContentStore:Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    .line 51
    return-void
.end method

.method public static injectMUpsight(Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;Ljavax/inject/Provider;)V
    .locals 1
    .param p0, "instance"    # Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "mUpsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightContext;

    iput-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 46
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;)V
    .locals 2
    .param p1, "instance"    # Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;

    .prologue
    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity_MembersInjector;->mUpsightProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightContext;

    iput-object v0, p1, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 40
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity_MembersInjector;->mContentStoreProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    iput-object v0, p1, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;->mContentStore:Lcom/upsight/android/marketing/internal/content/MarketingContentStore;

    .line 41
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 9
    check-cast p1, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;

    invoke-virtual {p0, p1}, Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity_MembersInjector;->injectMembers(Lcom/upsight/android/marketing/internal/billboard/BillboardManagementActivity;)V

    return-void
.end method
