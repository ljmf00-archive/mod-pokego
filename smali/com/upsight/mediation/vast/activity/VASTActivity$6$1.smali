.class Lcom/upsight/mediation/vast/activity/VASTActivity$6$1;
.super Ljava/lang/Object;
.source "VASTActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/mediation/vast/activity/VASTActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/upsight/mediation/vast/activity/VASTActivity$6;


# direct methods
.method constructor <init>(Lcom/upsight/mediation/vast/activity/VASTActivity$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/upsight/mediation/vast/activity/VASTActivity$6;

    .prologue
    .line 963
    iput-object p1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$6$1;->this$1:Lcom/upsight/mediation/vast/activity/VASTActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 966
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$6$1;->this$1:Lcom/upsight/mediation/vast/activity/VASTActivity$6;

    iget-object v0, v0, Lcom/upsight/mediation/vast/activity/VASTActivity$6;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    # getter for: Lcom/upsight/mediation/vast/activity/VASTActivity;->mPlayerControls:Lcom/upsight/mediation/vast/activity/PlayerControls;
    invoke-static {v0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$300(Lcom/upsight/mediation/vast/activity/VASTActivity;)Lcom/upsight/mediation/vast/activity/PlayerControls;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$6$1;->this$1:Lcom/upsight/mediation/vast/activity/VASTActivity$6;

    iget-object v0, v0, Lcom/upsight/mediation/vast/activity/VASTActivity$6;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    # getter for: Lcom/upsight/mediation/vast/activity/VASTActivity;->mPlayerControls:Lcom/upsight/mediation/vast/activity/PlayerControls;
    invoke-static {v0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$300(Lcom/upsight/mediation/vast/activity/VASTActivity;)Lcom/upsight/mediation/vast/activity/PlayerControls;

    move-result-object v0

    const-wide/16 v2, 0x21

    invoke-virtual {v0, v2, v3}, Lcom/upsight/mediation/vast/activity/PlayerControls;->update(J)V

    .line 969
    :cond_0
    return-void
.end method
