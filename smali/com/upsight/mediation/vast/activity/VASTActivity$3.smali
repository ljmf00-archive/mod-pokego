.class Lcom/upsight/mediation/vast/activity/VASTActivity$3;
.super Ljava/lang/Object;
.source "VASTActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/mediation/vast/activity/VASTActivity;->createPlayerControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;


# direct methods
.method constructor <init>(Lcom/upsight/mediation/vast/activity/VASTActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/upsight/mediation/vast/activity/VASTActivity;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$3;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 334
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 346
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 336
    :pswitch_0
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$3;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    # setter for: Lcom/upsight/mediation/vast/activity/VASTActivity;->rekt:Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$102(Lcom/upsight/mediation/vast/activity/VASTActivity;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 337
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-static {p1, v0}, Lcom/upsight/mediation/vast/util/Assets;->setAlpha(Landroid/view/View;F)V

    goto :goto_0

    .line 340
    :pswitch_1
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$3;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    # getter for: Lcom/upsight/mediation/vast/activity/VASTActivity;->rekt:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$100(Lcom/upsight/mediation/vast/activity/VASTActivity;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/upsight/mediation/vast/util/Assets;->setAlpha(Landroid/view/View;F)V

    .line 342
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$3;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    # invokes: Lcom/upsight/mediation/vast/activity/VASTActivity;->skipClicked()V
    invoke-static {v0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$200(Lcom/upsight/mediation/vast/activity/VASTActivity;)V

    goto :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
